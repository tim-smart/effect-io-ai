Package: `effect`<br />
Module: `Queue`<br />

## Queue.shutdown

Shuts down the queue immediately, discarding buffered messages and resuming
pending operations.

**Details**

The operation is idempotent and returns `true`, including when the queue has
already been shut down or completed.

**Example** (Shutting down queues)

```ts
import { Effect, Queue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* Queue.bounded<number>(2)

  // Add messages
  yield* Queue.offer(queue, 1)
  yield* Queue.offer(queue, 2)

  // Shutdown clears buffered messages and prevents further offers
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1114)

Since v2.0.0