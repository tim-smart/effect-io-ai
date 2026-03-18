Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromPubSub

Create a channel from a PubSub that outputs individual values.

This constructor creates a channel that reads from a PubSub by automatically
subscribing to it. The channel outputs individual values as they are published
to the PubSub, making it ideal for real-time streaming scenarios.

**Example**

```ts
import { Channel, Data, Effect, PubSub } from "effect"

class StreamError extends Data.TaggedError("StreamError")<{
  readonly message: string
}> {}

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<number>(16)

  // Create a channel that reads individual values
  const channel = Channel.fromPubSub(pubsub)

  // Publish some values
  yield* PubSub.publish(pubsub, 1)
  yield* PubSub.publish(pubsub, 2)
  yield* PubSub.publish(pubsub, 3)

  // The channel will output: 1, 2, 3 (individual values)
  return channel
})
```

**Example**

```ts
import { Channel, Data, Effect, PubSub } from "effect"

class NotificationError extends Data.TaggedError("NotificationError")<{
  readonly reason: string
}> {}

const notificationService = Effect.gen(function*() {
  const notificationPubSub = yield* PubSub.bounded<string>(50)

  // Create a channel for real-time notifications
  const notificationChannel = Channel.fromPubSub(notificationPubSub)

  // Transform notifications to add timestamps
  const timestampedChannel = Channel.map(notificationChannel, (message) => ({
    message,
    timestamp: new Date().toISOString(),
    id: Math.random().toString(36).substr(2, 9)
  }))

  return timestampedChannel
})
```

**Example**

```ts
import { Channel, Data, Effect, PubSub } from "effect"

class EventProcessingError extends Data.TaggedError("EventProcessingError")<{
  readonly eventType: string
  readonly cause: string
}> {}

interface DomainEvent {
  readonly type: string
  readonly payload: unknown
  readonly timestamp: number
}

const eventProcessor = Effect.gen(function*() {
  const eventPubSub = yield* PubSub.bounded<DomainEvent>(100)

  // Create a channel for processing domain events
  const eventChannel = Channel.fromPubSub(eventPubSub)

  // Filter and transform events
  const processedChannel = Channel.map(eventChannel, (event) => {
    if (event.type === "user.created") {
      return {
        ...event,
        processed: true,
        processedAt: Date.now()
      }
    }
    return event
  })

  return processedChannel
})
```

**Signature**

```ts
declare const fromPubSub: <A>(pubsub: PubSub.PubSub<A>) => Channel<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1440)

Since v4.0.0