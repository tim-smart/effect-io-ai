Package: `effect`<br />
Module: `Cause`<br />

## Cause.findError

Returns the first typed error value `E` from a cause.
Returns `Filter.fail` with the remaining cause when no `Fail` is found.

Use `findFail` if you need the full `Fail` reason (including
annotations). Use `findErrorOption` if you prefer an `Option`.

**Example** (extracting the first error value)

```ts
import { Cause, Result } from "effect"

const result = Cause.findError(Cause.fail("error"))
if (!Result.isFailure(result)) {
  console.log(result.success) // "error"
}
```

**See**

- `findFail` — extract the full `Fail` reason
- `findErrorOption` — `Option`-based variant

**Signature**

```ts
declare const findError: <E>(self: Cause<E>) => Result.Result<E, Cause<never>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L795)

Since v4.0.0