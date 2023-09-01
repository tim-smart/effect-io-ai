# intersect

Produces the intersection of this `Intervals` and that `Intervals`.

To import and use `intersect` from the "ScheduleIntervals" module:

```ts
import * as ScheduleIntervals from '@effect/io/ScheduleIntervals'

// Can be accessed like this
ScheduleIntervals.intersect
```

**Signature**

```ts
export declare const intersect: {
  (that: Intervals): (self: Intervals) => Intervals
  (self: Intervals, that: Intervals): Intervals
}
```
