Package: `effect`<br />
Module: `Cron`<br />

## Cron.match

Returns `true` when a date/time matches a `Cron` schedule.

**When to use**

Use to test whether a specific date/time satisfies a cron schedule.

**Details**

Seconds, minutes, hours, months, and the optional timezone are checked
directly. For day constraints, an empty `days` or `weekdays` set means that
field matches every value; when both sets are non-empty, a date matches if
either the day-of-month or weekday matches.

**Example** (Matching dates against a schedule)

```ts
import { Cron, Result } from "effect"

const cron = Result.getOrThrow(Cron.parse("0 0 4 8-14 * *"))

// Check if specific dates match
const matches1 = Cron.match(cron, new Date("2021-01-08T04:00:00Z"))
console.log(matches1) // true - 4 AM on the 8th

const matches2 = Cron.match(cron, new Date("2021-01-08T05:00:00Z"))
console.log(matches2) // false - wrong hour

const matches3 = Cron.match(cron, new Date("2021-01-07T04:00:00Z"))
console.log(matches3) // false - wrong day
```

**See**

- `next` for finding the next matching date/time
- `prev` for finding the previous matching date/time

**Signature**

```ts
declare const match: (cron: Cron, date: DateTime.DateTime.Input) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L678)

Since v2.0.0