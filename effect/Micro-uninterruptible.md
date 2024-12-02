# uninterruptible

Flag the effect as uninterruptible, which means that when the effect is
interrupted, it will be allowed to continue running until completion.

To import and use `uninterruptible` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.uninterruptible
undefined

**Signature**

```ts
export declare const uninterruptible: <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>
```
