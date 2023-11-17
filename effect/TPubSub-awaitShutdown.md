# awaitShutdown

Waits until the `TPubSub` is shutdown. The `STM` returned by this method will
not resume until the queue has been shutdown. If the `TPubSub` is already
shutdown, the `STM` will resume right away.

To import and use `awaitShutdown` from the "TPubSub" module:

```ts
import * as TPubSub from "effect/TPubSub"
// Can be accessed like this
TPubSub.awaitShutdown
```

**Signature**

```ts
export declare const awaitShutdown: <A>(self: TPubSub<A>) => STM.STM<never, never, void>
```
