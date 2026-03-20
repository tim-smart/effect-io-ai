Package: `effect`<br />
Module: `Cron`<br />

## Cron.equals

Checks if two Cron instances are equal.

This function compares two Cron instances to determine if they represent
the same schedule by checking all their time constraints for equality.

**Example**

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

**Signature**

```ts
declare const equals: { (that: Cron): (self: Cron) => boolean; (self: Cron, that: Cron): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cron.ts#L917)

Since v2.0.0