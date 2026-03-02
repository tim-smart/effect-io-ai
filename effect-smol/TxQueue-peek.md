Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.peek

Views the next item without removing it. If the queue is in a failed state,
the error is propagated through the E-channel.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number, string>(10)
  yield* TxQueue.offer(queue, 42)

  // Peek at the next item without removing it
  const item = yield* TxQueue.peek(queue)
  console.log(item) // 42

  // Item is still in the queue
  const size = yield* TxQueue.size(queue)
  console.log(size) // 1
})

// Error handling example
const errorExample = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number, string>(5)
  yield* TxQueue.fail(queue, "queue failed")

  // peek() propagates the queue error through E-channel
  const result = yield* Effect.flip(TxQueue.peek(queue))
  console.log(result) // "queue failed"
})
```

**Signature**

```ts
declare const peek: <A, E>(self: TxDequeue<A, E>) => Effect.Effect<A, E, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1043)

Since v4.0.0