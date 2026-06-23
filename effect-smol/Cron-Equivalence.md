Package: `effect`<br />
Module: `Cron`<br />

## Cron.Equivalence

Equivalence instance for comparing the field restrictions of two `Cron`
schedules.

**When to use**

Use to compare cron schedules through APIs that accept an equivalence
relation.

**Details**

This comparison checks seconds, minutes, hours, days, months, and weekdays.
It does not compare the optional timezone.

**Example** (Comparing schedules with equivalence)

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

**See**

- `equals` for directly comparing two `Cron` values

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<Cron>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L1006)

Since v2.0.0