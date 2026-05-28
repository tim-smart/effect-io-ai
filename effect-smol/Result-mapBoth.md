Package: `effect`<br />
Module: `Result`<br />

## Result.mapBoth

Transforms both the success and failure channels of a `Result`.

**When to use**

Use to transform both success and failure values without changing whether the
result succeeds or fails.

**Details**

- Applies `onSuccess` if the result is a `Success`
- Applies `onFailure` if the result is a `Failure`

**Example** (Mapping both channels)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.succeed(1),
  Result.mapBoth({
    onSuccess: (n) => n + 1,
    onFailure: (e) => `Error: ${e}`
  })
)
console.log(result)
// Output: { _tag: "Success", success: 2, ... }
```

**See**

- `map` to transform only the success value
- `mapError` to transform only the error value
- `match` to fold into a single value

**Signature**

```ts
declare const mapBoth: { <E, E2, A, A2>(options: { readonly onFailure: (left: E) => E2; readonly onSuccess: (right: A) => A2; }): (self: Result<A, E>) => Result<A2, E2>; <E, A, E2, A2>(self: Result<A, E>, options: { readonly onFailure: (left: E) => E2; readonly onSuccess: (right: A) => A2; }): Result<A2, E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L820)

Since v2.0.0