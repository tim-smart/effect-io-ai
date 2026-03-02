Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromPubSubArray

Create a channel from a PubSub that outputs arrays of values.

This constructor creates a channel that reads from a PubSub by automatically
subscribing to it and collecting values into arrays. The channel outputs
arrays of values in chunks, making it ideal for batch processing scenarios.

**Example**

```ts
import { Channel, Data, Effect, PubSub } from "effect"

class BatchError extends Data.TaggedError("BatchError")<{
  readonly message: string
}> {}

const program = Effect.gen(function*() {
  const pubsub = yield* PubSub.bounded<number>(16)

  // Create a channel that reads arrays of values
  const channel = Channel.fromPubSubArray(pubsub)

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

class OrderProcessingError extends Data.TaggedError("OrderProcessingError")<{
  readonly orderId: string
  readonly reason: string
}> {}

interface Order {
  readonly id: string
  readonly customerId: string
  readonly items: ReadonlyArray<string>
  readonly total: number
}

const orderBatchProcessor = Effect.gen(function*() {
  const orderPubSub = yield* PubSub.bounded<Order>(100)

  // Create a channel that processes orders in batches
  const orderChannel = Channel.fromPubSubArray(orderPubSub)

  // Transform to process each batch of orders
  const processedChannel = Channel.map(orderChannel, (orderBatch) => {
    const totalRevenue = orderBatch.reduce((sum, order) => sum + order.total, 0)
    const customerCount = new Set(orderBatch.map((order) =>
      order.customerId
    )).size

    return {
      batchSize: orderBatch.length,
      totalRevenue,
      uniqueCustomers: customerCount,
      processedAt: Date.now(),
      orders: orderBatch
    }
  })

  return processedChannel
})
```

**Example**

```ts
import { Channel, Data, Effect, PubSub } from "effect"

class LogProcessingError extends Data.TaggedError("LogProcessingError")<{
  readonly batchId: string
  readonly cause: string
}> {}

interface LogEntry {
  readonly timestamp: number
  readonly level: "info" | "warn" | "error"
  readonly message: string
  readonly source: string
}

const logAggregator = Effect.gen(function*() {
  const logPubSub = yield* PubSub.bounded<LogEntry>(500)

  // Create a channel that collects logs in batches
  const logChannel = Channel.fromPubSubArray(logPubSub)

  // Transform to analyze log batches
  const analysisChannel = Channel.map(logChannel, (logBatch) => {
    const errorCount = logBatch.filter((log) => log.level === "error").length
    const warnCount = logBatch.filter((log) => log.level === "warn").length
    const infoCount = logBatch.filter((log) => log.level === "info").length

    const timeRange = {
      start: Math.min(...logBatch.map((log) => log.timestamp)),
      end: Math.max(...logBatch.map((log) => log.timestamp))
    }

    return {
      batchId: Math.random().toString(36).substr(2, 9),
      totalEntries: logBatch.length,
      errorCount,
      warnCount,
      infoCount,
      timeRange,
      sources: [...new Set(logBatch.map((log) => log.source))]
    }
  })

  return analysisChannel
})
```

**Signature**

```ts
declare const fromPubSubArray: <A>(pubsub: PubSub.PubSub<A>) => Channel<Arr.NonEmptyReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1562)

Since v4.0.0