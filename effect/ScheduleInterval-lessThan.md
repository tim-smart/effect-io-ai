# lessThan

Returns `true` if this `Interval` is less than `that` interval, `false`
otherwise.

To import and use `lessThan` from the "ScheduleInterval" module:

```ts
import * as ScheduleInterval from "effect/ScheduleInterval"
// Can be accessed like this
ScheduleInterval.lessThan
```

**Signature**

```ts
export declare const lessThan: {
  (that: Interval): (self: Interval) => boolean
  (self: Interval, that: Interval): boolean
}
```
