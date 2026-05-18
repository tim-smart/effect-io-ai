Package: `effect`<br />
Module: `Cause`<br />

## Cause.findInterrupt

Returns a `Result` whose success value is the first `Interrupt` reason
in the cause, including its annotations. If the cause has no `Interrupt`
reason, the failure value is the original cause.

**Example** (extracting the first interrupt)

```ts
import { Cause, Result } from "effect"

const result = Cause.findInterrupt(Cause.interrupt(42))
if (!Result.isFailure(result)) {
  console.log(result.success.fiberId) // 42
}
```

**See**

- `interruptors` — collect all interrupting fiber IDs as a `Set`

**Signature**

```ts
declare const findInterrupt: <E>(self: Cause<E>) => Result.Result<Interrupt, Cause<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L942)

Since v4.0.0