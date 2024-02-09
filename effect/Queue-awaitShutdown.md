# awaitShutdown

Waits until the queue is shutdown. The `Effect` returned by this method will
not resume until the queue has been shutdown. If the queue is already
shutdown, the `Effect` will resume right away.

To import and use `awaitShutdown` from the "Queue" module:

```ts
import * as Queue from "effect/Queue"
// Can be accessed like this
Queue.awaitShutdown
```

**Signature**

```ts
export declare const awaitShutdown: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<void>
```
