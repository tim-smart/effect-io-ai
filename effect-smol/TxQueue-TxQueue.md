Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.TxQueue

A TxQueue represents a transactional queue data structure that provides both
enqueue and dequeue operations with Software Transactional Memory (STM) semantics.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  // Create a bounded transactional queue (E defaults to never)
  const queue = yield* TxQueue.bounded<number>(10)

  // Single operations - automatically transactional
  const accepted = yield* TxQueue.offer(queue, 42)
  const item = yield* TxQueue.take(queue) // Effect<number, never>
  console.log(item) // 42

  // Queue with error channel
  const faultTolerantQueue = yield* TxQueue.bounded<number, string>(10)

  // Operations can handle queue-level failures
  yield* TxQueue.shutdown(faultTolerantQueue)
  const result = yield* Effect.flip(TxQueue.take(faultTolerantQueue)) // never
})
```

**Signature**

```ts
export interface TxQueue<in out A, in out E = never> extends TxEnqueue<A, E>, TxDequeue<A, E> {
  readonly [TypeId]: TxQueue.Variance<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L286)

Since v4.0.0