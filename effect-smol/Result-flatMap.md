Package: `effect`<br />
Module: `Result`<br />

## Result.flatMap

Chains a function that returns a `Result` onto a successful value.

- If `self` is a `Success`, applies `f` to the value and returns the resulting `Result`
- If `self` is a `Failure`, short-circuits and returns it unchanged
- The error types are merged into a union (`E | E2`)
- This is the monadic `bind` / `>>=` for `Result`

**Example** (Sequential validation)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.succeed(5),
  Result.flatMap((n) =>
    n > 0 ? Result.succeed(n * 2) : Result.fail("not positive")
  )
)
console.log(result)
// Output: { _tag: "Success", success: 10, ... }
```

**See**

- `andThen` for a more flexible variant that also accepts plain values
- `map` when `f` does not return a `Result`

**Signature**

```ts
declare const flatMap: { <A, A2, E2>(f: (a: A) => Result<A2, E2>): <E>(self: Result<A, E>) => Result<A2, E | E2>; <A, E, A2, E2>(self: Result<A, E>, f: (a: A) => Result<A2, E2>): Result<A2, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1215)

Since v4.0.0