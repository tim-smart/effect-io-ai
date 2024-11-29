# scheduleWithMaxElapsed

Transform a `MicroSchedule` to one that will stop repeating after the specified
amount of time.

To import and use `scheduleWithMaxElapsed` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.scheduleWithMaxElapsed
undefined

**Signature**

```ts
export declare const scheduleWithMaxElapsed: {
  (max: number): (self: MicroSchedule) => MicroSchedule
  (self: MicroSchedule, max: number): MicroSchedule
}
```
