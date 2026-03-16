Package: `effect`<br />
Module: `Cron`<br />

## Cron.CronParseError

Represents an error that occurs when parsing a cron expression fails.

This error provides detailed information about what went wrong during
the parsing process, including the error message and optionally the
input that caused the error.

**Example**

```ts
import { Cron, Result } from "effect"

const result = Cron.parse("invalid expression")
if (Result.isFailure(result)) {
  const error: Cron.CronParseError = result.failure
  console.log(error.message) // "Invalid number of segments in cron expression"
  console.log(error.input) // "invalid expression"
}
```

**Signature**

```ts
declare class CronParseError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L382)

Since v4.0.0