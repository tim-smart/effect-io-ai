Package: `effect`<br />
Module: `Cron`<br />

## Cron.match

Checks if a given date/time falls within an active Cron time window.

This function determines whether a specific date and time matches
the cron schedule, taking into account all time constraints and
the optional timezone.

**Example**

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

**Signature**

```ts
declare const match: (cron: Cron, date: DateTime.DateTime.Input) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L575)

Since v2.0.0