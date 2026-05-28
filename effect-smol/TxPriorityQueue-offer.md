Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.offer

Inserts an element into the queue in sorted position.

**Example** (Offering a value)

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.empty<number>(Order.Number)
  yield* TxPriorityQueue.offer(pq, 2)
  yield* TxPriorityQueue.offer(pq, 1)
  const first = yield* TxPriorityQueue.take(pq)
  console.log(first) // 1
})
```

**Signature**

```ts
declare const offer: { <A>(value: A): (self: TxPriorityQueue<A>) => Effect.Effect<void>; <A>(self: TxPriorityQueue<A>, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L338)

Since v2.0.0