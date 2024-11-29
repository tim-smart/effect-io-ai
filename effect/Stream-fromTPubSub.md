# fromTPubSub

Creates a stream from a subscription to a `TPubSub`.

To import and use `fromTPubSub` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromTPubSub
undefined

**Signature**

```ts
export declare const fromTPubSub: <A>(pubsub: TPubSub<A>) => Stream<A>
```
