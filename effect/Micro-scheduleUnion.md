# scheduleUnion

Combines two `MicroSchedule`s, by recurring if either schedule wants to
recur, using the minimum of the two durations between recurrences.

To import and use `scheduleUnion` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.scheduleUnion
```

**Signature**

```ts
export declare const scheduleUnion: {
  (that: MicroSchedule): (self: MicroSchedule) => MicroSchedule
  (self: MicroSchedule, that: MicroSchedule): MicroSchedule
}
```
