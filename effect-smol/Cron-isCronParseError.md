Package: `effect`<br />
Module: `Cron`<br />

## Cron.isCronParseError

Checks whether a given value is a CronParseError instance.

**When to use**

Use to narrow an unknown failure before handling it as a cron parse error.

**Details**

This function is a type guard that determines whether the provided
value is a CronParseError by checking for the presence of the
CronParseError type identifier.

**Example** (Checking cron parse errors)

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

**See**

- `CronParseError` for the parse error type
- `parse` for producing `CronParseError` values on invalid input

**Signature**

```ts
declare const isCronParseError: (u: unknown) => u is CronParseError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L557)

Since v4.0.0