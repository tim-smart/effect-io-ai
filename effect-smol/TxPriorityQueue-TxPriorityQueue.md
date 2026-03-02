Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.TxPriorityQueue

A transactional priority queue backed by a sorted `Chunk`.

Elements are stored in ascending order according to the `Order` provided at
construction time. `take` returns the smallest element, `peek` observes it
without removing.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.empty<number>(Order.Number)
  yield* TxPriorityQueue.offer(pq, 3)
  yield* TxPriorityQueue.offer(pq, 1)
  yield* TxPriorityQueue.offer(pq, 2)
  const first = yield* TxPriorityQueue.take(pq)
  console.log(first) // 1
})
```

**Signature**

```ts
export interface TxPriorityQueue<in out A> extends Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly ref: TxRef.TxRef<Chunk<A>>
  readonly ord: Order<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L48)

Since v4.0.0