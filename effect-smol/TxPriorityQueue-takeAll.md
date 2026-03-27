Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.takeAll

Takes all elements from the queue, returning them in priority order.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.fromIterable(Order.Number, [3, 1, 2])
  const all = yield* TxPriorityQueue.takeAll(pq)
  console.log(all) // [1, 2, 3]
})
```

**Signature**

```ts
declare const takeAll: <A>(self: TxPriorityQueue<A>) => Effect.Effect<Array<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L375)

Since v4.0.0