Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.TxDequeue

A TxDequeue represents the read-only interface of a transactional queue, providing
operations for consuming elements (dequeue operations) and inspecting queue state.

**Example** (Taking values through dequeue handles)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  // Queue without error channel
  const queue = yield* TxQueue.bounded<number>(10)
  yield* TxQueue.offer(queue, 42)
  const item = yield* TxQueue.take(queue)
  console.log(item) // 42

  // Queue with error channel - errors propagate through E-channel
  const faultTolerantQueue = yield* TxQueue.bounded<number, string>(10)
  yield* TxQueue.fail(faultTolerantQueue, "processing failed")

  // All dequeue operations now fail with the error directly
  const takeResult = yield* Effect.flip(TxQueue.take(faultTolerantQueue)) // "processing failed"
  const peekResult = yield* Effect.flip(TxQueue.peek(faultTolerantQueue)) // "processing failed"
})
```

**Signature**

```ts
export interface TxDequeue<out A, out E = never> extends TxQueueState {
  readonly [DequeueTypeId]: TxDequeue.Variance<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L209)

Since v4.0.0