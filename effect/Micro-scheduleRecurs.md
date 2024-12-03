# scheduleRecurs

Create a `MicroSchedule` that will stop repeating after the specified number
of attempts.

To import and use `scheduleRecurs` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.scheduleRecurs
```

**Signature**

```ts
export declare const scheduleRecurs: (n: number) => MicroSchedule
```
