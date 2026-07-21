Package: `effect`<br />
Module: `Cron`<br />

## Cron.sequence

Returns an infinite iterator that yields dates matching the Cron schedule.

**When to use**

Use to lazily iterate future occurrences of a cron schedule.

**Details**

The iterator generates an infinite sequence of dates when the cron schedule
should trigger, starting after the specified date/time or after the current
time when no date is provided.

**Example** (Iterating scheduled occurrences)

```ts
import { Cron, Result } from "effect"

const cron = Result.getOrThrow(Cron.parse("0 0 9 * * 1-5", "UTC")) // 9 AM weekdays

// Get first 5 occurrences
const iterator = Cron.sequence(cron, new Date("2023-01-01T00:00:00Z"))
const next5 = Array.from({ length: 5 }, () => iterator.next().value.toISOString())

console.log(next5)
// ["2023-01-02T09:00:00.000Z", "2023-01-03T09:00:00.000Z", ...]
```

**See**

- `next` for computing one next occurrence

**Signature**

```ts
declare const sequence: (cron: Cron, now?: DateTime.DateTime.Input) => IterableIterator<Date>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L985)

Since v2.0.0