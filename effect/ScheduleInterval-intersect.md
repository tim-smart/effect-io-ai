# intersect

Computes a new `Interval` which is the intersection of this `Interval` and
that `Interval`.

To import and use `intersect` from the "ScheduleInterval" module:

ts
import \* as ScheduleInterval from "effect/ScheduleInterval"
// Can be accessed like this
ScheduleInterval.intersect
undefined

**Signature**

```ts
export declare const intersect: {
  (that: Interval): (self: Interval) => Interval
  (self: Interval, that: Interval): Interval
}
```
