Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.offerAll

Inserts all elements from an iterable into the queue.

**Example** (Offering multiple values)

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.empty<number>(Order.Number)
  yield* TxPriorityQueue.offerAll(pq, [3, 1, 2])
  const first = yield* TxPriorityQueue.take(pq)
  console.log(first) // 1
})
```

**Signature**

```ts
declare const offerAll: { <A>(values: Iterable<A>): (self: TxPriorityQueue<A>) => Effect.Effect<void>; <A>(self: TxPriorityQueue<A>, values: Iterable<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxPriorityQueue.ts#L346)

Since v2.0.0