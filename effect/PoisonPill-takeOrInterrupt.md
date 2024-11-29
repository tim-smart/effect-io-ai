# takeOrInterrupt

Attempts to take a message from the queue in the same way Queue.take does.
If the result is a PoisonPill, it will interrupt the effect.

To import and use `takeOrInterrupt` from the "PoisonPill" module:

ts
import \* as PoisonPill from "@effect/cluster/PoisonPill"
// Can be accessed like this
PoisonPill.takeOrInterrupt
undefined

**Signature**

```ts
export declare function takeOrInterrupt<Req>(dequeue: Queue.Dequeue<Req | PoisonPill>): Effect.Effect<Req>
```
