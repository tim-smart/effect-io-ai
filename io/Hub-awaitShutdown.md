# awaitShutdown

Waits until the queue is shutdown. The `Effect` returned by this method will
not resume until the queue has been shutdown. If the queue is already
shutdown, the `Effect` will resume right away.

To import and use `awaitShutdown` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.awaitShutdown
```

**Signature**

```ts
export declare const awaitShutdown: <A>(self: Hub<A>) => Effect.Effect<never, never, void>
```
