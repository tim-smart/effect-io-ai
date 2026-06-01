Package: `effect`<br />
Module: `Cause`<br />

## Cause.findError

Returns a `Result` whose success value is the first typed error value `E`
from a `Fail` reason in the cause. If the cause has no `Fail` reason,
the failure value is the original cause narrowed to `Cause<never>`, because
it contains no typed error reasons.

**When to use**

Use when you need the first typed error value from a `Cause` as a `Result`
that preserves the original cause when no match is found.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L907)

Since v4.0.0