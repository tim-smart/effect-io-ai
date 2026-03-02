Package: `effect`<br />
Module: `Result`<br />

## Result.map

Transforms the success channel of a `Result`, leaving the failure channel unchanged.

- If the result is a `Success`, applies `f` to the value and returns a new `Success`
- If the result is a `Failure`, returns it as-is
- Does not mutate the input
- Use `flatMap` if `f` returns a `Result` (to avoid nested Results)

**Example** (Doubling the success value)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.succeed(3),
  Result.map((n) => n * 2)
)
console.log(result)
// Output: { _tag: "Success", success: 6, ... }
```

**See**

- `mapError` to transform only the error value
- `mapBoth` to transform both channels
- `flatMap` when `f` returns a `Result`

**Signature**

```ts
declare const map: { <A, A2>(f: (ok: A) => A2): <E>(self: Result<A, E>) => Result<A2, E>; <A, E, A2>(self: Result<A, E>, f: (ok: A) => A2): Result<A2, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L803)

Since v4.0.0