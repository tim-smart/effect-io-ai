# max

Returns the maximum of the two `Intervals` (i.e. which has the latest start).

To import and use `max` from the "ScheduleIntervals" module:

ts
import \* as ScheduleIntervals from "effect/ScheduleIntervals"
// Can be accessed like this
ScheduleIntervals.max
undefined

**Signature**

```ts
export declare const max: {
  (that: Intervals): (self: Intervals) => Intervals
  (self: Intervals, that: Intervals): Intervals
}
```
