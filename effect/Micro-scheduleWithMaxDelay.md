# scheduleWithMaxDelay

Transform a `MicroSchedule` to one that will have a delay that will never exceed
the specified maximum.

To import and use `scheduleWithMaxDelay` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.scheduleWithMaxDelay
undefined

**Signature**

```ts
export declare const scheduleWithMaxDelay: {
  (max: number): (self: MicroSchedule) => MicroSchedule
  (self: MicroSchedule, max: number): MicroSchedule
}
```
