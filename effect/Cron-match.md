Package: `effect`<br />
Module: `Cron`<br />

## Cron.match

Returns `true` when a date/time matches a `Cron` schedule.

**When to use**

Use to test whether a specific date/time satisfies a cron schedule.

**Details**

The schedule's timezone determines which calendar fields are read from the
input; the host system's timezone is used when the schedule has no timezone.
Seconds, minutes, hours, and months are checked against their restrictions;
an empty set leaves that field unrestricted. If only `days` or `weekdays` is
restricted, that field must match. If both are restricted, either may match
unless the schedule was created with `and: true`, which requires both to
match.

**Example** (Matching dates against a schedule)

```ts
import { Cron, Result } from "effect"

const cron = Result.getOrThrow(Cron.parse("0 0 4 8-14 * *", "UTC"))

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L660)

Since v2.0.0