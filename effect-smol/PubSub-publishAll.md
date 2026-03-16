Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.publishAll

Publishes all of the specified messages to the `PubSub`, returning whether they
were published to the `PubSub`.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publish multiple messages at once
  const messages = ["Hello", "World", "from", "Effect"]
  const allPublished = yield* PubSub.publishAll(pubsub, messages)
  console.log("All messages published:", allPublished) // true

  // With a smaller capacity
  const smallPubsub = yield* PubSub.bounded<string>(2)
  const manyMessages = ["msg1", "msg2", "msg3", "msg4"]

  // Will suspend until space becomes available for all messages
  const publishAllEffect = PubSub.publishAll(smallPubsub, manyMessages)

  // Subscribe to consume messages and free space
  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(smallPubsub)
    yield* PubSub.takeAll(subscription) // consume all messages
    const result = yield* publishAllEffect
    console.log("All messages eventually published:", result)
  }))
})
```

**Signature**

```ts
declare const publishAll: { <A>(elements: Iterable<A>): (self: PubSub<A>) => Effect.Effect<boolean>; <A>(self: PubSub<A>, elements: Iterable<A>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L905)

Since v2.0.0