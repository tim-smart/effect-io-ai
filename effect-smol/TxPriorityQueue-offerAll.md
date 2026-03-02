Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.offerAll

Inserts all elements from an iterable into the queue.

**Example**

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
declare const offerAll: { <A>(values: Iterable<A>): (self: TxPriorityQueue<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxPriorityQueue<A>, values: Iterable<A>): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L322)

Since v4.0.0