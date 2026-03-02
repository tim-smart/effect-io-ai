Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.TxEnqueue

A TxEnqueue represents the write-only interface of a transactional queue, providing
operations for adding elements (enqueue operations) and inspecting queue state.

**Example**

```ts
import type { Cause } from "effect"
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  // Queue without error channel
  const queue = yield* TxQueue.bounded<number>(10)
  const accepted = yield* TxQueue.offer(queue, 42)

  // Queue with error channel for completion signaling
  const faultTolerantQueue = yield* TxQueue.bounded<number, string>(10)
  yield* TxQueue.offerAll(faultTolerantQueue, [1, 2, 3])
  yield* TxQueue.fail(faultTolerantQueue, "processing complete")

  // Works with Done for clean completion
  const completableQueue = yield* TxQueue.bounded<
    string,
    Cause.Done
  >(5)
  yield* TxQueue.offer(completableQueue, "task")
  yield* TxQueue.end(completableQueue)
})
```

**Signature**

```ts
export interface TxEnqueue<in A, in E = never> extends TxQueueState {
  readonly [EnqueueTypeId]: TxEnqueue.Variance<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L222)

Since v4.0.0