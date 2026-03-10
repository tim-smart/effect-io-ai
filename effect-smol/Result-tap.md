Package: `effect`<br />
Module: `Result`<br />

## Result.tap

Runs a side-effect on the success value without altering the `Result`.

- If the result is a `Success`, calls `f` with the value (return value is ignored)
- If the result is a `Failure`, `f` is not called
- Returns the original `Result` unchanged (same reference)
- Useful for logging, debugging, or performing mutations outside the Result chain

**Example** (Logging a success value)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.succeed(42),
  Result.tap((n) => console.log("Got:", n))
)
// Output: "Got: 42"

console.log(Result.isSuccess(result))
// Output: true
```

**See**

- `map` to transform the success value

**Signature**

```ts
declare const tap: { <A>(f: (a: A) => void): <E>(self: Result<A, E>) => Result<A, E>; <A, E>(self: Result<A, E>, f: (a: A) => void): Result<A, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1718)

Since v4.0.0