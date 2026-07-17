Package: `effect`<br />
Module: `Effect`<br />

## Effect.suspend

Creates an `Effect` lazily, delaying construction until it is needed.

**When to use**

Use when you need to defer the evaluation of an effect until it is required.

**Details**

`suspend` takes a thunk that represents an effect and delays creating it
until the suspended effect is evaluated. This is useful for optimizing
expensive computations, managing circular dependencies such as recursive
functions, and helping TypeScript unify return types when branches construct
different effects. Any side effects or scoped captures inside the thunk are
re-executed on each invocation.

**Example** (Lazily evaluating side effects)

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

**Example** (Suspending recursive Fibonacci evaluation)

```ts
import { Effect } from "effect"

const blowsUp = (n: number): Effect.Effect<number> =>
  n < 2
    ? Effect.succeed(1)
    : Effect.zipWith(blowsUp(n - 1), blowsUp(n - 2), (a, b) => a + b)

// console.log(Effect.runSync(blowsUp(32)))
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

**Example** (Helping TypeScript infer recursive effect types)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1101)

Since v2.0.0