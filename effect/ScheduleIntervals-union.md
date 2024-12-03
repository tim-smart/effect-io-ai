# union

Computes the union of this `Intervals` and that `Intervals`

To import and use `union` from the "ScheduleIntervals" module:

```ts
import * as ScheduleIntervals from "effect/ScheduleIntervals"
// Can be accessed like this
ScheduleIntervals.union
```

**Signature**

```ts
export declare const union: {
  (that: Intervals): (self: Intervals) => Intervals
  (self: Intervals, that: Intervals): Intervals
}
```
