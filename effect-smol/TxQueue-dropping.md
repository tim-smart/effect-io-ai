Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.dropping

Creates a new dropping `TxQueue` with the specified capacity that drops new items when full.

**Return behavior**: This function returns a new TxQueue reference with
dropping strategy. No existing TxQueue instances are modified.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  // Create a dropping queue with capacity 2
  const queue = yield* TxQueue.dropping<number>(2)

  // Fill to capacity
  yield* TxQueue.offer(queue, 1)
  yield* TxQueue.offer(queue, 2)

  // This will be dropped (returns false)
  const accepted = yield* TxQueue.offer(queue, 3)
  console.log(accepted) // false
})
```

**Signature**

```ts
declare const dropping: <A = never, E = never>(capacity: number) => Effect.Effect<TxQueue<A, E>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L490)

Since v4.0.0