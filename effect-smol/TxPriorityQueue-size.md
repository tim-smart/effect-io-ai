Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.size

Returns the number of elements in the queue.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.fromIterable(Order.Number, [1, 2, 3])
  const s = yield* TxPriorityQueue.size(pq)
  console.log(s) // 3
})
```

**Signature**

```ts
declare const size: <A>(self: TxPriorityQueue<A>) => Effect.Effect<number, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L184)

Since v4.0.0