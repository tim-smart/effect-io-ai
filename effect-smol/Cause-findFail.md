Package: `effect`<br />
Module: `Cause`<br />

## Cause.findFail

Returns the first `Fail` reason from a cause, including its
annotations. Returns `Filter.fail` with the remaining cause when no
`Fail` is found.

Use `findError` if you only need the unwrapped error value `E`.

**Example** (extracting the first Fail reason)

```ts
import { Cause, Result } from "effect"

const result = Cause.findFail(Cause.fail("error"))
if (!Result.isFailure(result)) {
  console.log(result.success.error) // "error"
}
```

**See**

- `findError` — extract the unwrapped `E` value
- `findDie` — extract the first `Die` reason

**Signature**

```ts
declare const findFail: <E>(self: Cause<E>) => Result.Result<Fail<E>, Cause<never>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L770)

Since v4.0.0