Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromSubscription

Create a channel from a PubSub subscription

**Example**

```ts
import { Channel, Data, Effect, PubSub } from "effect"

class SubscriptionError extends Data.TaggedError("SubscriptionError")<{
  readonly reason: string
}> {}

const program = Effect.gen(function*() {
  // Create a PubSub
  const pubsub = yield* PubSub.bounded<string>(32)

  // Create a subscription
  const subscription = yield* PubSub.subscribe(pubsub)

  // Publish some messages
  yield* PubSub.publish(pubsub, "Hello")
  yield* PubSub.publish(pubsub, "World")
  yield* PubSub.publish(pubsub, "from")
  yield* PubSub.publish(pubsub, "PubSub")

  // Create a channel from the subscription
  const channel = Channel.fromSubscription(subscription)

  // The channel will receive all published messages
  return channel
})

// Real-time notifications example
const notificationChannel = Effect.gen(function*() {
  const eventBus = yield* PubSub.unbounded<{ type: string; payload: any }>()
  const userSubscription = yield* PubSub.subscribe(eventBus)

  return Channel.fromSubscription(userSubscription)
})
```

**Signature**

```ts
declare const fromSubscription: <A>(subscription: PubSub.Subscription<A>) => Channel<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1230)

Since v4.0.0