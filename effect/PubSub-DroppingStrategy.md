Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.DroppingStrategy

Represents the dropping strategy for bounded `PubSub` values.

**When to use**

Use to keep publishers fast by dropping new messages when the `PubSub` is at
capacity.

**Details**

A publish that arrives while the `PubSub` is full is dropped instead of
waiting for capacity.

**Gotchas**

Subscribers may miss messages published while they are subscribed.

**Example** (Applying a dropping strategy)

```ts
import { Effect, PubSub } from "effect"

const program = Effect.gen(function*() {
  // Create PubSub with dropping strategy
  const pubsub = yield* PubSub.dropping<string>(2)

  // Or explicitly create with dropping strategy
  const customPubsub = yield* PubSub.make<string>({
    atomicPubSub: () => PubSub.makeAtomicBounded(2),
    strategy: () => new PubSub.DroppingStrategy()
  })

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(pubsub)

    // Fill the PubSub
    const pub1 = yield* PubSub.publish(pubsub, "msg1") // true
    const pub2 = yield* PubSub.publish(pubsub, "msg2") // true
    const pub3 = yield* PubSub.publish(pubsub, "msg3") // false (dropped)

    console.log("Publication results:", [pub1, pub2, pub3]) // [true, true, false]

    // Subscribers will only see the first two messages
    const messages = yield* PubSub.takeAll(subscription)
    console.log("Received messages:", messages) // ["msg1", "msg2"]
  }))
})
```

**Signature**

```ts
declare class DroppingStrategy<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L2517)

Since v4.0.0