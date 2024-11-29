# scheduleIntersect

Combines two `MicroSchedule`s, by recurring only if both schedules want to
recur, using the maximum of the two durations between recurrences.

To import and use `scheduleIntersect` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.scheduleIntersect
undefined

**Signature**

```ts
export declare const scheduleIntersect: {
  (that: MicroSchedule): (self: MicroSchedule) => MicroSchedule
  (self: MicroSchedule, that: MicroSchedule): MicroSchedule
}
```
