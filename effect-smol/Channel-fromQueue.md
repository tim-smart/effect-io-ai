Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromQueue

Create a channel from a queue

**Example**

```ts
import { Channel, Data, Effect, Queue } from "effect"

class QueueError extends Data.TaggedError("QueueError")<{
  readonly reason: string
}> {}

const program = Effect.gen(function*() {
  // Create a bounded queue
  const queue = yield* Queue.bounded<string, QueueError>(10)

  // Add some items to the queue
  yield* Queue.offer(queue, "item1")
  yield* Queue.offer(queue, "item2")
  yield* Queue.offer(queue, "item3")

  // Create a channel from the queue
  const channel = Channel.fromQueue(queue)

  // The channel will read items from the queue one by one
  return channel
})

// Sliding queue example
const slidingProgram = Effect.gen(function*() {
  const slidingQueue = yield* Queue.sliding<number, QueueError>(5)
  yield* Queue.offerAll(slidingQueue, [1, 2, 3, 4, 5, 6])
  return Channel.fromQueue(slidingQueue)
})
```

**Signature**

```ts
declare const fromQueue: <A, E>(queue: Queue.Dequeue<A, E>) => Channel<A, Exclude<E, Cause.Done>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1130)

Since v4.0.0