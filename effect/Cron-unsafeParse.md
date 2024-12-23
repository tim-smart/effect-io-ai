# unsafeParse

Parses a cron expression into a `Cron` instance.

Throws on failure.

To import and use `unsafeParse` from the "Cron" module:

```ts
import * as Cron from "effect/Cron"
// Can be accessed like this
Cron.unsafeParse
```

**Example**

```ts
import { Cron } from "effect"

// At 04:00 on every day-of-month from 8 through 14.
assert.deepStrictEqual(
  Cron.unsafeParse("0 4 8-14 * *"),
  Cron.make({
    minutes: [0],
    hours: [4],
    days: [8, 9, 10, 11, 12, 13, 14],
    months: [],
    weekdays: []
  })
)
```

**Signature**

```ts
export declare const unsafeParse: (cron: string, tz?: DateTime.TimeZone | string) => Cron
```
