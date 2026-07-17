Package: `effect`<br />
Module: `Cron`<br />

## Cron.CronParseError

Represents an error that occurs when parsing a cron expression fails.

**When to use**

Use to handle invalid cron expression failures returned by `parse`.

**Details**

This error provides information about what went wrong during parsing,
including the error message and optionally the input that caused the error.

**Example** (Handling cron parse failures)

```ts
import { Cron, Result } from "effect"

const result = Cron.parse("invalid expression")
if (Result.isFailure(result)) {
  const error: Cron.CronParseError = result.failure
  console.log(error.message) // "Invalid number of segments in cron expression"
  console.log(error.input) // "invalid expression"
}
```

**See**

- `parse` for the parser that returns this error in `Result.fail`
- `isCronParseError` for narrowing unknown values to this error type

**Signature**

```ts
declare class CronParseError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L487)

Since v4.0.0