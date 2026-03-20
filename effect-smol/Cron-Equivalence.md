Package: `effect`<br />
Module: `Cron`<br />

## Cron.Equivalence

An Equivalence instance for comparing Cron schedules.

This equivalence compares two Cron instances by checking if their
time constraints (seconds, minutes, hours, days, months, weekdays)
are equivalent, regardless of the internal order.

**Example**

```ts
import { Cron } from "effect"

const cron1 = Cron.make({
  minutes: [0, 30],
  hours: [9],
  days: [1, 15],
  months: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  weekdays: [1, 2, 3, 4, 5]
})

const cron2 = Cron.make({
  minutes: [30, 0], // Different order
  hours: [9],
  days: [15, 1], // Different order
  months: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  weekdays: [1, 2, 3, 4, 5]
})

console.log(Cron.Equivalence(cron1, cron2)) // true
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<Cron>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L871)

Since v2.0.0