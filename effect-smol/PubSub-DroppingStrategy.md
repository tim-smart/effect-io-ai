Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.DroppingStrategy

A strategy that drops new messages when the `PubSub` is at capacity. This
guarantees that a slow subscriber will not slow down the rate at which
messages are published. However, it creates the risk that a slow
subscriber will slow down the rate at which messages are received by
other subscribers and that subscribers may not receive all messages
published to the `PubSub` while they are subscribed.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  // Create PubSub with dropping strategy
  const pubsub = yield* PubSub.dropping<string>(2)

  // Or explicitly create with dropping strategy
  const customPubsub = yield* PubSub.make<string>({
    atomicPubSub: () => PubSub.makeAtomicBounded(2),
    strategy: () => new PubSub.DroppingStrategy()
  })

  // Fill the PubSub
  const pub1 = yield* PubSub.publish(pubsub, "msg1") // true
  const pub2 = yield* PubSub.publish(pubsub, "msg2") // true
  const pub3 = yield* PubSub.publish(pubsub, "msg3") // false (dropped)

  console.log("Publication results:", [pub1, pub2, pub3]) // [true, true, false]

  // Subscribers will only see the first two messages
  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)
    const messages = yield* PubSub.takeAll(subscription)
    console.log("Received messages:", messages) // ["msg1", "msg2"]
  }))
})
```

**Signature**

```ts
declare class DroppingStrategy<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L2340)

Since v4.0.0