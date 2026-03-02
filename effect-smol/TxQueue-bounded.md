Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.bounded

Creates a new bounded `TxQueue` with the specified capacity.

**Return behavior**: This function returns a new TxQueue reference with
the specified capacity. No existing TxQueue instances are modified.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  // Create a bounded queue (E defaults to never)
  const queue = yield* TxQueue.bounded<number>(10)

  // Create a bounded queue with error channel
  const faultTolerantQueue = yield* TxQueue.bounded<number, string>(10)

  // Offer items - will succeed until capacity is reached
  yield* TxQueue.offer(queue, 1)
  yield* TxQueue.offer(queue, 2)

  const item = yield* TxQueue.take(queue)
  console.log(item) // 1
})
```

**Signature**

```ts
declare const bounded: <A = never, E = never>(capacity: number) => Effect.Effect<TxQueue<A, E>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L406)

Since v4.0.0