Package: `effect`<br />
Module: `Cron`<br />

## Cron.parse

Parses a cron expression into a `Cron` instance.

**Example**

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

**Signature**

```ts
declare const parse: (cron: string, tz?: DateTime.TimeZone | string) => Result.Result<Cron, CronParseError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L493)

Since v2.0.0