Package: `effect`<br />
Module: `Result`<br />

## Result.filterOrFail

Validates the success value of a `Result` using a predicate, failing with a
custom error if the predicate returns `false`.

- If the result is already a `Failure`, it is returned as-is
- If the predicate passes, the `Success` is returned unchanged
- If the predicate fails, `orFailWith` produces the error for a new `Failure`
- Also accepts a `Refinement` to narrow the success type
- The error type of the output is the union of both error types

**Example** (Filtering a success value)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.succeed(0),
  Result.filterOrFail(
    (n) => n > 0,
    (n) => `${n} is not positive`
  )
)
console.log(result)
// Output: { _tag: "Failure", failure: "0 is not positive", ... }
```

**See**

- `liftPredicate` to create a `Result` from a raw value with a predicate
- `flatMap` for general conditional chaining

**Signature**

```ts
declare const filterOrFail: { <A, B extends A, E2>(refinement: Refinement<NoInfer<A>, B>, orFailWith: (value: NoInfer<A>) => E2): <E>(self: Result<A, E>) => Result<B, E2 | E>; <A, E2>(predicate: Predicate<NoInfer<A>>, orFailWith: (value: NoInfer<A>) => E2): <E>(self: Result<A, E>) => Result<A, E2 | E>; <A, E, B extends A, E2>(self: Result<A, E>, refinement: Refinement<A, B>, orFailWith: (value: A) => E2): Result<B, E | E2>; <A, E, E2>(self: Result<A, E>, predicate: Predicate<A>, orFailWith: (value: A) => E2): Result<A, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L955)

Since v4.0.0