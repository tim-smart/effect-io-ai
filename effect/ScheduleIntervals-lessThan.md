# lessThan

Returns `true` if the start of this `Intervals` is before the start of that
`Intervals`, `false` otherwise.

To import and use `lessThan` from the "ScheduleIntervals" module:

```ts
import * as ScheduleIntervals from "effect/ScheduleIntervals"
// Can be accessed like this
ScheduleIntervals.lessThan
```

**Signature**

```ts
export declare const lessThan: {
  (that: Intervals): (self: Intervals) => boolean
  (self: Intervals, that: Intervals): boolean
}
```
