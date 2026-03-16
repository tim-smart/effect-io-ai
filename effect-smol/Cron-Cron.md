Package: `effect`<br />
Module: `Cron`<br />

## Cron.Cron

Represents a cron schedule with time constraints and timezone information.

A Cron instance defines when a scheduled task should run, supporting
seconds, minutes, hours, days, months, and weekdays constraints.
It also supports timezone-aware scheduling.

**Example**

```ts
import { Cron } from "effect"

// Create a cron that runs at 9 AM on weekdays
const weekdayMorning = Cron.make({
  minutes: [0],
  hours: [9],
  days: [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31
  ],
  months: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  weekdays: [1, 2, 3, 4, 5] // Monday to Friday
})

// Check if a date matches the schedule
const matches = Cron.match(weekdayMorning, new Date("2023-06-05T09:00:00"))
console.log(matches) // true if it's 9 AM on a weekday
```

**Signature**

```ts
export interface Cron extends Pipeable, Equal.Equal, Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly tz: Option.Option<DateTime.TimeZone>
  readonly seconds: ReadonlySet<number>
  readonly minutes: ReadonlySet<number>
  readonly hours: ReadonlySet<number>
  readonly days: ReadonlySet<number>
  readonly months: ReadonlySet<number>
  readonly weekdays: ReadonlySet<number>
  /** @internal */
  readonly first: {
    readonly second: number
    readonly minute: number
    readonly hour: number
    readonly day: number
    readonly month: number
    readonly weekday: number
  }
  /** @internal */
  readonly next: {
    readonly second: ReadonlyArray<number | undefined>
    readonly minute: ReadonlyArray<number | undefined>
    readonly hour: ReadonlyArray<number | undefined>
    readonly day: ReadonlyArray<number | undefined>
    readonly month: ReadonlyArray<number | undefined>
    readonly weekday: ReadonlyArray<number | undefined>
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L84)

Since v2.0.0