Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.takeBetween

Takes between `min` and `max` currently available items, waiting for `min` on
an open queue.

If the queue is closing, drains the currently available items even when fewer
than `min` are available and transitions to `Done`. Invalid ranges
(`min <= 0`, `max <= 0`, or `min > max`) return an empty array. If the queue
is already done, the effect fails with the queue's completion cause.

**Example** (Taking batches within bounds)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)
  yield* TxQueue.offerAll(queue, [1, 2, 3, 4, 5, 6, 7, 8])

  // Take between 2 and 5 items
  const batch1 = yield* TxQueue.takeBetween(queue, 2, 5)
  console.log(batch1) // [1, 2, 3, 4, 5] - took 5 (up to max)

  // Take between 1 and 10 items (but only 3 remain)
  const batch2 = yield* TxQueue.takeBetween(queue, 1, 10)
  console.log(batch2) // [6, 7, 8] - took 3 (all remaining)

  // Would wait for at least 1 item to be available
  // const batch3 = yield* TxQueue.takeBetween(queue, 1, 3)
})
```

**Signature**

```ts
declare const takeBetween: { (min: number, max: number): <A, E>(self: TxDequeue<A, E>) => Effect.Effect<Array<A>, E>; <A, E>(self: TxDequeue<A, E>, min: number, max: number): Effect.Effect<Array<A>, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L937)

Since v4.0.0