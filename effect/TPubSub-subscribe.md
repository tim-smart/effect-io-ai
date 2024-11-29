# subscribe

Subscribes to receive messages from the `TPubSub`. The resulting subscription can
be evaluated multiple times to take a message from the `TPubSub` each time. The
caller is responsible for unsubscribing from the `TPubSub` by shutting down the
queue.

To import and use `subscribe` from the "TPubSub" module:

ts
import \* as TPubSub from "effect/TPubSub"
// Can be accessed like this
TPubSub.subscribe
undefined

**Signature**

```ts
export declare const subscribe: <A>(self: TPubSub<A>) => STM.STM<TQueue.TDequeue<A>>
```
