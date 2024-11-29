# awaitShutdown

Waits until the queue is shutdown. The `STM` returned by this method will
not resume until the queue has been shutdown. If the queue is already
shutdown, the `STM` will resume right away.

To import and use `awaitShutdown` from the "TQueue" module:

ts
import \* as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.awaitShutdown
undefined

**Signature**

```ts
export declare const awaitShutdown: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<void>
```
