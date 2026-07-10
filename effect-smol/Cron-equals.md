Package: `effect`<br />
Module: `Cron`<br />

## Cron.equals

Checks whether two `Cron` instances have the same field restrictions.

**When to use**

Use to directly compare whether two cron schedules have the same field
restrictions.

**Details**

The comparison checks seconds, minutes, hours, days, months, and weekdays.
It does not compare the optional timezone.

**Example** (Checking schedule equality)

```ts
import { Cron } from "effect"

const cron1 = Cron.make({
  minutes: [0],
  hours: [9],
  days: [1, 15],
  months: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  weekdays: [1, 2, 3, 4, 5]
})

const cron2 = Cron.make({
  minutes: [0],
  hours: [9],
  days: [1, 15],
  months: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  weekdays: [1, 2, 3, 4, 5]
})

console.log(Cron.equals(cron1, cron2)) // true
console.log(Cron.equals(cron1)(cron2)) // true (curried form)
```

**See**

- `Equivalence` for the reusable equivalence instance

**Signature**

```ts
declare const equals: { (that: Cron): (self: Cron) => boolean; (self: Cron, that: Cron): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L1099)

Since v2.0.0