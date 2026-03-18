Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromQueueArray

Create a channel from a queue that emits arrays of elements

**Example**

```ts
import { Channel, Data, Effect, Queue } from "effect"

class ProcessingError extends Data.TaggedError("ProcessingError")<{
  readonly stage: string
}> {}

const program = Effect.gen(function*() {
  // Create a queue for batch processing
  const queue = yield* Queue.bounded<number, ProcessingError>(100)

  // Fill queue with data
  yield* Queue.offerAll(queue, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

  // Create a channel that reads arrays from the queue
  const arrayChannel = Channel.fromQueueArray(queue)

  // This will emit non-empty arrays of elements instead of individual items
  // Useful for batch processing scenarios
  return arrayChannel
})

// High-throughput processing example
const batchProcessor = Effect.gen(function*() {
  const dataQueue = yield* Queue.dropping<string, ProcessingError>(1000)
  const batchChannel = Channel.fromQueueArray(dataQueue)

  // Process data in batches for better performance
  return Channel.map(
    batchChannel,
    (batch) => batch.map((item) => item.toUpperCase())
  )
})
```

**Signature**

```ts
declare const fromQueueArray: <A, E>(queue: Queue.Dequeue<A, E>) => Channel<Arr.NonEmptyReadonlyArray<A>, Exclude<E, Cause.Done>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1176)

Since v4.0.0