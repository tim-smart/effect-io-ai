Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromSubscriptionArray

Create a channel from a PubSub subscription that outputs arrays of values.

This constructor creates a channel that reads from a PubSub subscription and outputs
arrays of values in chunks. It's useful when you want to process multiple values at once
for better performance.

**Example**

```ts
import { Channel, Data, Effect, PubSub } from "effect"

class StreamError extends Data.TaggedError("StreamError")<{
  readonly message: string
}> {}

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<number>(16)
  const subscription = yield* PubSub.subscribe(pubsub)

  // Create a channel that reads arrays of values
  const channel = Channel.fromSubscriptionArray(subscription)

  // Publish some values
  yield* PubSub.publish(pubsub, 1)
  yield* PubSub.publish(pubsub, 2)
  yield* PubSub.publish(pubsub, 3)
  yield* PubSub.publish(pubsub, 4)

  // The channel will output arrays like [1, 2, 3] and [4]
  return channel
})
```

**Example**

```ts
import { Channel, Data, Effect, PubSub } from "effect"

class BatchProcessingError extends Data.TaggedError("BatchProcessingError")<{
  readonly reason: string
}> {}

const batchProcessor = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<string>(32)
  const subscription = yield* PubSub.subscribe(pubsub)

  // Create a channel that processes items in batches
  const batchChannel = Channel.fromSubscriptionArray(subscription)

  // Transform to process each batch
  const processedChannel = Channel.map(batchChannel, (batch) => {
    console.log(`Processing batch of ${batch.length} items:`, batch)
    return batch.map((item) => item.toUpperCase())
  })

  return processedChannel
})
```

**Example**

```ts
import { Channel, Data, Effect, PubSub } from "effect"

class MetricsError extends Data.TaggedError("MetricsError")<{
  readonly cause: string
}> {}

const metricsAggregator = Effect.gen(function*() {
  const metricsPubSub = yield* PubSub.bounded<
    { timestamp: number; value: number }
  >(100)
  const subscription = yield* PubSub.subscribe(metricsPubSub)

  // Create a channel that collects metrics in chunks
  const metricsChannel = Channel.fromSubscriptionArray(subscription)

  // Transform to calculate aggregate statistics
  const aggregatedChannel = Channel.map(metricsChannel, (metrics) => {
    const values = metrics.map((m) => m.value)
    const sum = values.reduce((a, b) => a + b, 0)
    const avg = sum / values.length
    const min = Math.min(...values)
    const max = Math.max(...values)

    return {
      count: values.length,
      sum,
      average: avg,
      min,
      max,
      timestamp: Date.now()
    }
  })

  return aggregatedChannel
})
```

**Signature**

```ts
declare const fromSubscriptionArray: <A>(subscription: PubSub.Subscription<A>) => Channel<Arr.NonEmptyReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1337)

Since v4.0.0