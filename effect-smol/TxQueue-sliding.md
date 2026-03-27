Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.sliding

Creates a new sliding `TxQueue` with the specified capacity that evicts old items when full.

**Return behavior**: This function returns a new TxQueue reference with
sliding strategy. No existing TxQueue instances are modified.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  // Create a sliding queue with capacity 2
  const queue = yield* TxQueue.sliding<number>(2)

  // Fill to capacity
  yield* TxQueue.offer(queue, 1)
  yield* TxQueue.offer(queue, 2)

  // This will evict item 1 and add 3
  yield* TxQueue.offer(queue, 3)

  const item = yield* TxQueue.take(queue)
  console.log(item) // 2 (item 1 was evicted)
})
```

**Signature**

```ts
declare const sliding: <A = never, E = never>(capacity: number) => Effect.Effect<TxQueue<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L534)

Since v4.0.0