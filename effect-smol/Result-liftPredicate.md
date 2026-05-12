Package: `effect`<br />
Module: `Result`<br />

## Result.liftPredicate

Lifts a value into a `Result` based on a predicate or refinement.

- If the predicate returns `true`, the value becomes `Success<A>`
- If the predicate returns `false`, `orFailWith` produces the error for `Failure<E>`
- Also accepts a `Refinement` to narrow the success type
- Supports both data-first and data-last (piped) usage

**Example** (Validating a number)

```ts
import { pipe, Result } from "effect"

const ensurePositive = pipe(
  5,
  Result.liftPredicate(
    (n: number) => n > 0,
    (n) => `${n} is not positive`
  )
)
console.log(ensurePositive)
// Output: { _tag: "Success", success: 5, ... }
```

**See**

- `filterOrFail` to validate a value that is already in a `Result`
- `fromNullishOr` for nullable-based construction

**Signature**

```ts
declare const liftPredicate: { <A, B extends A, E>(refinement: Refinement<A, B>, orFailWith: (a: A) => E): (a: A) => Result<B, E>; <B extends A, E, A = B>(predicate: Predicate<A>, orFailWith: (a: A) => E): (a: B) => Result<B, E>; <A, E, B extends A>(self: A, refinement: Refinement<A, B>, orFailWith: (a: A) => E): Result<B, E>; <B extends A, E, A = B>(self: B, predicate: Predicate<A>, orFailWith: (a: A) => E): Result<B, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L901)

Since v4.0.0