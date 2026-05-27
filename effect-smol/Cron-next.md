Package: `effect`<br />
Module: `Cron`<br />

## Cron.next

Returns the next scheduled date/time for the given Cron instance.

**When to use**

Use to find the next occurrence of a cron schedule after a specific date/time
or after the current time.

**Details**

Searches for the next date and time when the cron schedule should trigger,
starting after the specified date/time or after the current time when no
date is provided.

**Example** (Finding the next occurrence)

```ts
import { Cron, Result } from "effect"

const cron = Result.getOrThrow(Cron.parse("0 0 4 8-14 * *"))

// Get next run after a specific date
const after = new Date("2021-01-01T00:00:00Z")
const nextRun = Cron.next(cron, after)
console.log(nextRun) // 2021-01-08T04:00:00.000Z

// Get next run from current time
const nextFromNow = Cron.next(cron)
console.log(nextFromNow) // Next occurrence from now
```

**See**

- `prev` for finding the previous scheduled occurrence
- `sequence` for iterating future scheduled occurrences

**Signature**

```ts
declare const next: (cron: Cron, now?: DateTime.DateTime.Input) => Date
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L772)

Since v2.0.0