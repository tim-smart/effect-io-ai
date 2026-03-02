Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.SlidingStrategy

A strategy that adds new messages and drops old messages when the `PubSub` is
at capacity. This guarantees that a slow subscriber will not slow down
the rate at which messages are published and received by other
subscribers. However, it creates the risk that a slow subscriber will
not receive some messages published to the `PubSub` while it is subscribed.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  // Create PubSub with sliding strategy
  const pubsub = yield* PubSub.sliding<string>(2)

  // Or explicitly create with sliding strategy
  const customPubsub = yield* PubSub.make<string>({
    atomicPubSub: () => PubSub.makeAtomicBounded(2),
    strategy: () => new PubSub.SlidingStrategy()
  })

  // Publish messages that exceed capacity
  yield* PubSub.publish(pubsub, "msg1") // stored
  yield* PubSub.publish(pubsub, "msg2") // stored
  yield* PubSub.publish(pubsub, "msg3") // "msg1" evicted, "msg3" stored
  yield* PubSub.publish(pubsub, "msg4") // "msg2" evicted, "msg4" stored

  // Subscribers will see the most recent messages
  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)
    const messages = yield* PubSub.takeAll(subscription)
    console.log("Recent messages:", messages) // ["msg3", "msg4"]
  }))
})
```

**Signature**

```ts
declare class SlidingStrategy<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L2415)

Since v4.0.0