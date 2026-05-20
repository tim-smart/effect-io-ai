Package: `effect`<br />
Module: `Cause`<br />

## Cause.findFail

Returns a `Result` whose success value is the first `Fail` reason in
the cause, including its annotations. If the cause has no `Fail` reason, the
failure value is the original cause narrowed to `Cause<never>`, because it
contains no typed error reasons.

**When to use**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L809)

Since v4.0.0