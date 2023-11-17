# max

Returns the maximum of two `Interval`s.

To import and use `max` from the "ScheduleInterval" module:

```ts
import * as ScheduleInterval from "effect/ScheduleInterval"
// Can be accessed like this
ScheduleInterval.max
```

**Signature**

```ts
export declare const max: { (that: Interval): (self: Interval) => Interval; (self: Interval, that: Interval): Interval }
```
