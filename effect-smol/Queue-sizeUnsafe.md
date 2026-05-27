Package: `effect`<br />
Module: `Queue`<br />

## Queue.sizeUnsafe

Returns the current number of buffered messages in the queue synchronously.

**Details**

Completed queues report a size of `0`. This unsafe operation reads the queue
state directly without Effect wrapping.

**Example** (Checking queue size synchronously)

```ts
import { Cause, Effect, Option, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(10)

  // Check size of empty queue
  const size1 = Queue.sizeUnsafe(queue)
  console.log(size1) // 0

  // Add some messages
  Queue.offerUnsafe(queue, 1)
  Queue.offerUnsafe(queue, 2)
  Queue.offerUnsafe(queue, 3)

  // Check size after adding messages
  const size2 = Queue.sizeUnsafe(queue)
  console.log(size2) // 3

  // End the queue
  Queue.endUnsafe(queue)

  // Size of ended queue is 0
  const size3 = Queue.sizeUnsafe(queue)
  console.log(size3) // 0
})
```

**Signature**

```ts
declare const sizeUnsafe: <A, E>(self: Dequeue<A, E>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1710)

Since v4.0.0