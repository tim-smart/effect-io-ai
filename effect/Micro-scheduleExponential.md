# scheduleExponential

Create a `MicroSchedule` that will generate a delay with an exponential backoff.

To import and use `scheduleExponential` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.scheduleExponential
undefined

**Signature**

```ts
export declare const scheduleExponential: (baseMillis: number, factor?: number) => MicroSchedule
```
