Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.takeAll

Takes all items from the queue. Blocks if the queue is empty.

If the queue is already in a failed state, the error is propagated through the E-channel.
Follows the same patterns as `take` - waits when there are no elements.

Returns a non-empty array since it blocks until at least one item is available.

**Mutation behavior**: This function mutates the original TxQueue by removing
all items. It does not return a new TxQueue reference.

**Example**

```ts
import { Array, Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number, string>(10)
  yield* TxQueue.offerAll(queue, [1, 2, 3, 4, 5])

  // Take all items atomically - returns NonEmptyArray
  const items = yield* TxQueue.takeAll(queue)
  console.log(items) // [1, 2, 3, 4, 5]
  console.log(Array.isArrayNonEmpty(items)) // true
})

// Error propagation example
const errorExample = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number, string>(5)
  yield* TxQueue.offerAll(queue, [1, 2])
  yield* TxQueue.fail(queue, "processing error")

  // takeAll() propagates the queue error through E-channel
  const result = yield* Effect.flip(TxQueue.takeAll(queue))
  console.log(result) // "processing error"
})
```

**Signature**

```ts
declare const takeAll: <A, E>(self: TxDequeue<A, E>) => Effect.Effect<Arr.NonEmptyArray<A>, E, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L801)

Since v4.0.0