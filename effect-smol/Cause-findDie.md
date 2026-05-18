Package: `effect`<br />
Module: `Cause`<br />

## Cause.findDie

Returns a `Result` whose success value is the first `Die` reason in
the cause, including its annotations. If the cause has no `Die` reason, the
failure value is the original cause.

Use `findDefect` if you only need the unwrapped defect value.

**Example** (extracting the first Die reason)

```ts
import { Cause, Result } from "effect"

const result = Cause.findDie(Cause.die("defect"))
if (!Result.isFailure(result)) {
  console.log(result.success.defect) // "defect"
}
```

**See**

- `findDefect` — extract the unwrapped defect value
- `findFail` — extract the first `Fail` reason

**Signature**

```ts
declare const findDie: <E>(self: Cause<E>) => Result.Result<Die, Cause<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L871)

Since v4.0.0