Package: `effect`<br />
Module: `Cron`<br />

## Cron.make

Creates a Cron instance from time constraints.

Constructs a cron schedule by specifying which seconds, minutes, hours,
days, months, and weekdays the schedule should match. Empty arrays mean
"match all" for that time unit.

**Example**

```ts
import { Cron } from "effect"

// Every day at midnight
const midnight = Cron.make({
  minutes: [0],
  hours: [0],
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
  weekdays: [0, 1, 2, 3, 4, 5, 6]
})

// Every 15 minutes during business hours on weekdays
const businessHours = Cron.make({
  minutes: [0, 15, 30, 45],
  hours: [9, 10, 11, 12, 13, 14, 15, 16, 17],
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
```

**Signature**

```ts
declare const make: (values: { readonly seconds?: Iterable<number> | undefined; readonly minutes: Iterable<number>; readonly hours: Iterable<number>; readonly days: Iterable<number>; readonly months: Iterable<number>; readonly weekdays: Iterable<number>; readonly tz?: DateTime.TimeZone | undefined; }) => Cron
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L294)

Since v2.0.0