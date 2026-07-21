Package: `effect`<br />
Module: `Cron`<br />

## Cron.parse

Parses a cron expression safely into a `Cron` instance, returning a `Result`
instead of throwing.

**When to use**

Use to parse cron expressions from configuration or user input while handling
invalid input as a `Result`.

**Details**

The expression may contain five fields, where seconds default to `0`, or six
fields including seconds. Fields support `*`, comma-separated values, ranges,
steps, and month or weekday aliases. Invalid expressions fail with
`CronParseError`. When both the day-of-month and weekday fields are
restricted, a date matches if either field matches. When either field starts
with `*`, both fields must match; an unrestricted field always matches.

**Example** (Parsing cron expressions)

```ts
import { Cron, Result } from "effect"
import * as assert from "node:assert"

// At 04:00 on every day-of-month from 8 through 14.
assert.deepStrictEqual(
  Cron.parse("0 0 4 8-14 * *"),
  Result.succeed(Cron.make({
    seconds: [0],
    minutes: [0],
    hours: [4],
    days: [8, 9, 10, 11, 12, 13, 14],
    months: [],
    weekdays: []
  }))
)
```

**See**

- `parseUnsafe` for throwing on invalid cron expressions
- `make` for constructing a schedule from explicit field constraints

**Signature**

```ts
declare const parse: (cron: string, tz?: DateTime.TimeZone | string) => Result.Result<Cron, CronParseError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L551)

Since v2.0.0