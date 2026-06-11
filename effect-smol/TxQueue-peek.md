Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.peek

Waits transactionally for the next item and returns it without removing it.

**Details**

If the queue is open but empty, the transaction retries until an item is available or the queue completes. If the queue is done, the queue's completion cause is propagated through the error channel.

**Example** (Peeking without removing values)

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
declare const peek: <A, E>(self: TxDequeue<A, E>) => Effect.Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1019)

Since v2.0.0