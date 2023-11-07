# min

Returns the minimum of two `Interval`s.

To import and use `min` from the "ScheduleInterval" module:

```ts
import * as ScheduleInterval from 'effect/ScheduleInterval'

// Can be accessed like this
ScheduleInterval.min
```

**Signature**

```ts
export declare const min: { (that: Interval): (self: Interval) => Interval; (self: Interval, that: Interval): Interval }
```
