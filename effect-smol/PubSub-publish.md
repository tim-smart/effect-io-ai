Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.publish

Publishes a message to the `PubSub`, returning whether the message was published
to the `PubSub`.

**Example**

```ts
import { Effect } from "effect"
import * as PubSub from "effect/PubSub"

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(10)

  // Publish a message
  const published = yield* PubSub.publish(pubsub, "Hello World")
  console.log("Message published:", published) // true

  // With a full bounded PubSub using backpressure strategy
  const smallPubsub = yield* PubSub.bounded<string>(1)
  yield* PubSub.publish(smallPubsub, "msg1") // succeeds

  // This will suspend until space becomes available
  const publishEffect = PubSub.publish(smallPubsub, "msg2")

  // Create a subscriber to free up space
  yield* Effect.scoped(Effect.gen(function*() {
    const subscription = yield* PubSub.subscribe(smallPubsub)
    yield* PubSub.take(subscription) // frees space
    const result = yield* publishEffect
    console.log("Second message published:", result) // true
  }))
})
```

**Signature**

```ts
declare const publish: { <A>(value: A): (self: PubSub<A>) => Effect.Effect<boolean>; <A>(self: PubSub<A>, value: A): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L807)

Since v2.0.0