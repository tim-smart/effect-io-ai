# make

Creates a new `Intervals` from a `List` of `Interval`s.

To import and use `make` from the "ScheduleIntervals" module:

ts
import \* as ScheduleIntervals from "effect/ScheduleIntervals"
// Can be accessed like this
ScheduleIntervals.make
undefined

**Signature**

```ts
export declare const make: (intervals: Check.Chunk<Interval.Interval>) => Intervals
```
