# awaitShutdown

Waits until the queue is shutdown. The `Effect` returned by this method will
not resume until the queue has been shutdown. If the queue is already
shutdown, the `Effect` will resume right away.

To import and use `awaitShutdown` from the "PubSub" module:

```ts
import * as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.awaitShutdown
```

**Signature**

```ts
export declare const awaitShutdown: <A>(self: PubSub<A>) => Effect.Effect<never, never, void>
```
