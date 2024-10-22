# shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

To import and use `shutdown` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.shutdown
```

**Signature**

```ts
export declare const shutdown: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<void>
```
