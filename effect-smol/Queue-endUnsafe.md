Package: `effect`<br />
Module: `Queue`<br />

## Queue.endUnsafe

Signal that the queue is complete synchronously. If the queue is already done, `false` is
returned.

**Gotchas**

This is an unsafe operation that directly modifies the queue without Effect wrapping.

**Example** (Ending queues synchronously)

```ts
import { Cause, Effect, Queue } from "effect"

// Create a queue and use unsafe operations
const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number, Cause.Done>(10)

  // Add some messages
  Queue.offerUnsafe(queue, 1)
  Queue.offerUnsafe(queue, 2)

  // End the queue synchronously
  const ended = Queue.endUnsafe(queue)
  console.log(ended) // true

  // Existing messages can still be consumed while the queue is closing
  console.log(queue.state._tag) // "Closing"

  Queue.takeUnsafe(queue)
  Queue.takeUnsafe(queue)

  // After buffered messages are consumed, the queue is done
  console.log(queue.state._tag) // "Done"
})
```

**Signature**

```ts
declare const endUnsafe: <A, E>(self: Enqueue<A, E | Done>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L983)

Since v4.0.0