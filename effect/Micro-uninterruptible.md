# uninterruptible

Wrap the given `Micro` effect in an uninterruptible region, preventing the
effect from being aborted.

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
