# union

Computes a new `Interval` which is the union of this `Interval` and that
`Interval` as a `Some`, otherwise returns `None` if the two intervals cannot
form a union.

To import and use `union` from the "ScheduleInterval" module:

```ts
import * as ScheduleInterval from "effect/ScheduleInterval"
// Can be accessed like this
ScheduleInterval.union
```

**Signature**

```ts
export declare const union: {
  (that: Interval): (self: Interval) => Option.Option<Interval>
  (self: Interval, that: Interval): Option.Option<Interval>
}
```
