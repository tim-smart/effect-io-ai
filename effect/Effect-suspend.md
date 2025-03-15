Package: `effect`<br />
Module: `Effect`<br />

## Effect.suspend

Delays the creation of an `Effect` until it is actually needed.

**Details**

The `Effect.suspend` function takes a thunk that represents the effect and
wraps it in a suspended effect. This means the effect will not be created
until it is explicitly needed, which is helpful in various scenarios:
- **Lazy Evaluation**: Helps optimize performance by deferring computations,
  especially when the effect might not be needed, or when its computation is
  expensive. This also ensures that any side effects or scoped captures are
  re-executed on each invocation.
- **Handling Circular Dependencies**: Useful in managing circular
  dependencies, such as recursive functions that need to avoid eager
  evaluation to prevent stack overflow.
- **Unifying Return Types**: Can help TypeScript unify return types in
  situations where multiple branches of logic return different effects,
  simplifying type inference.

**When to Use**

Use this function when you need to defer the evaluation of an effect until it
is required. This is particularly useful for optimizing expensive
computations, managing circular dependencies, or resolving type inference
issues.

**Example** (Lazy Evaluation with Side Effects)

```ts
import { Effect } from "effect"

let i = 0

const bad = Effect.succeed(i++)

const good = Effect.suspend(() => Effect.succeed(i++))

console.log(Effect.runSync(bad)) // Output: 0
console.log(Effect.runSync(bad)) // Output: 0

console.log(Effect.runSync(good)) // Output: 1
console.log(Effect.runSync(good)) // Output: 2
```

**Example** (Recursive Fibonacci)

```ts
import { Effect } from "effect"

const blowsUp = (n: number): Effect.Effect<number> =>
  n < 2
    ? Effect.succeed(1)
    : Effect.zipWith(blowsUp(n - 1), blowsUp(n - 2), (a, b) => a + b)

console.log(Effect.runSync(blowsUp(32)))
// crash: JavaScript heap out of memory

const allGood = (n: number): Effect.Effect<number> =>
  n < 2
    ? Effect.succeed(1)
    : Effect.zipWith(
        Effect.suspend(() => allGood(n - 1)),
        Effect.suspend(() => allGood(n - 2)),
        (a, b) => a + b
      )

console.log(Effect.runSync(allGood(32)))
// Output: 3524578
```

**Example** (Using Effect.suspend to Help TypeScript Infer Types)

```ts
import { Effect } from "effect"

//   Without suspend, TypeScript may struggle with type inference.
//   Inferred type:
//     (a: number, b: number) =>
//       Effect<never, Error, never> | Effect<number, never, never>
const withoutSuspend = (a: number, b: number) =>
  b === 0
    ? Effect.fail(new Error("Cannot divide by zero"))
    : Effect.succeed(a / b)

//   Using suspend to unify return types.
//   Inferred type:
//     (a: number, b: number) => Effect<number, Error, never>
const withSuspend = (a: number, b: number) =>
  Effect.suspend(() =>
    b === 0
      ? Effect.fail(new Error("Cannot divide by zero"))
      : Effect.succeed(a / b)
  )
```

**Signature**

```ts
declare const suspend: <A, E, R>(effect: LazyArg<Effect<A, E, R>>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3268)

Since v2.0.0