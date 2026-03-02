Package: `effect`<br />
Module: `Queue`<br />

## Queue.shutdown

Shutdown the queue, canceling any pending operations.
If the queue is already done, `false` is returned.

**Example**

```ts
import { Cause, Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(2)

  // Add messages
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)

  // Try to add more than capacity (will be pending)
  const pendingOffer = Queue.offer(queue, 3)

  // Shutdown cancels pending operations and clears the queue
  const wasShutdown = yield* Queue.shutdown(queue)
  console.log(wasShutdown) // true

  // Queue is now done and cleared
  const size = yield* Queue.size(queue)
  console.log(size) // 0
})
```

**Signature**

```ts
declare const shutdown: <A, E>(self: Enqueue<A, E>) => Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L938)

Since v4.0.0