Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.publishAll

Publishes all of the specified messages to the `PubSub`, returning whether they
were published to the `PubSub`.

**Example** (Publishing multiple messages)

```ts
import { Effect, Fiber, PubSub } from "effect"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publish multiple messages at once
  const messages = ["Hello", "World", "from", "Effect"]
  const allPublished = yield* PubSub.publishAll(pubsub, messages)
  console.log("All messages published:", allPublished) // true

  // With a smaller capacity and an active subscription
  const smallPubsub = yield* PubSub.bounded<string>(2)
  const manyMessages = ["msg1", "msg2", "msg3", "msg4"]

  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(smallPubsub)

    // Will suspend until space becomes available for all messages
    const fiber = yield* Effect.forkChild(PubSub.publishAll(smallPubsub, manyMessages))

    const firstBatch = yield* PubSub.takeBetween(subscription, 2, 2)
    console.log("First batch:", firstBatch) // ["msg1", "msg2"]

    const result = yield* Fiber.join(fiber)
    console.log("All messages eventually published:", result) // true

    const secondBatch = yield* PubSub.takeAll(subscription)
    console.log("Second batch:", secondBatch) // ["msg3", "msg4"]
  }))
})
```

**Signature**

```ts
declare const publishAll: { <A>(elements: Iterable<A>): (self: PubSub<A>) => Effect.Effect<boolean>; <A>(self: PubSub<A>, elements: Iterable<A>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L1061)

Since v2.0.0