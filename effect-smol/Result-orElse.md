Package: `effect`<br />
Module: `Result`<br />

## Result.orElse

Returns the original `Result` if it is a `Success`, otherwise applies
`that` to the error and returns the resulting `Result`.

- `Success<A>` is returned unchanged
- `Failure<E>` calls `that(e)` to produce a new `Result`
- Use to provide a recovery path or fallback computation on failure

**Example** (Recovering from a failure)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.fail("primary failed"),
  Result.orElse(() => Result.succeed(99))
)
console.log(result)
// Output: { _tag: "Success", success: 99, ... }
```

**See**

- `getOrElse` to unwrap with a fallback value (not a Result)
- `mapError` to transform the error without recovering

**Signature**

```ts
declare const orElse: { <E, A2, E2>(that: (err: E) => Result<A2, E2>): <A>(self: Result<A, E>) => Result<A | A2, E2>; <A, E, A2, E2>(self: Result<A, E>, that: (err: E) => Result<A2, E2>): Result<A | A2, E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L1177)

Since v4.0.0