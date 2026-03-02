Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.fromIterable

Creates a `TxPriorityQueue` from an iterable of elements.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.fromIterable(Order.Number, [3, 1, 2])
  const first = yield* TxPriorityQueue.take(pq)
  console.log(first) // 1
})
```

**Signature**

```ts
declare const fromIterable: { <A>(order: Order<A>): (iterable: Iterable<A>) => Effect.Effect<TxPriorityQueue<A>, never, Effect.Transaction>; <A>(order: Order<A>, iterable: Iterable<A>): Effect.Effect<TxPriorityQueue<A>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L132)

Since v4.0.0