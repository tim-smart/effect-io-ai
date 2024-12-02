# interruptible

Flag the effect as interruptible, which means that when the effect is
interrupted, it will be interrupted immediately.

To import and use `interruptible` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.interruptible
undefined

**Signature**

```ts
export declare const interruptible: <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>
```
