# scheduleSpaced

Create a `MicroSchedule` that will generate a constant delay.

To import and use `scheduleSpaced` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.scheduleSpaced
```

**Signature**

```ts
export declare const scheduleSpaced: (millis: number) => MicroSchedule
```
