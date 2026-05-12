Package: `effect`<br />
Module: `Result`<br />

## Result.mapError

Transforms the failure channel of a `Result`, leaving the success channel unchanged.

- If the result is a `Failure`, applies `f` to the error and returns a new `Failure`
- If the result is a `Success`, returns it as-is
- Does not mutate the input

**Example** (Adding context to an error)

```ts
import { pipe, Result } from "effect"

const result = pipe(
  Result.fail("not found"),
  Result.mapError((e) => `Error: ${e}`)
)
console.log(result)
// Output: { _tag: "Failure", failure: "Error: not found", ... }
```

**See**

- `map` to transform only the success value
- `mapBoth` to transform both channels

**Signature**

```ts
declare const mapError: { <E, E2>(f: (err: E) => E2): <A>(self: Result<A, E>) => Result<A, E2>; <A, E, E2>(self: Result<A, E>, f: (err: E) => E2): Result<A, E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L777)

Since v4.0.0