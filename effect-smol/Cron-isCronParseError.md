Package: `effect`<br />
Module: `Cron`<br />

## Cron.isCronParseError

Checks if a given value is a CronParseError instance.

This function is a type guard that determines whether the provided
value is a CronParseError by checking for the presence of the
CronParseError type identifier.

**Example**

```ts
import { Cron, Result } from "effect"

const result = Cron.parse("invalid cron expression")
if (Result.isFailure(result)) {
  const error = result.failure
  console.log(Cron.isCronParseError(error)) // true
}

console.log(Cron.isCronParseError(new Error("regular error"))) // false
console.log(Cron.isCronParseError("not an error")) // false
```

**Signature**

```ts
declare const isCronParseError: (u: unknown) => u is CronParseError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L464)

Since v2.0.0