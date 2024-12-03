# scheduleAddDelay

Returns a new `MicroSchedule` with an added calculated delay to each delay
returned by this schedule.

To import and use `scheduleAddDelay` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.scheduleAddDelay
```

**Signature**

```ts
export declare const scheduleAddDelay: {
  (f: () => number): (self: MicroSchedule) => MicroSchedule
  (self: MicroSchedule, f: () => number): MicroSchedule
}
```
