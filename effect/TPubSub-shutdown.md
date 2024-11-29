# shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

To import and use `shutdown` from the "TPubSub" module:

ts
import \* as TPubSub from "effect/TPubSub"
// Can be accessed like this
TPubSub.shutdown
undefined

**Signature**

```ts
export declare const shutdown: <A>(self: TPubSub<A>) => STM.STM<void>
```
