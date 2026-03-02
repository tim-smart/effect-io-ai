Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.takeUpTo

Takes up to `n` elements from the queue in priority order.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.fromIterable(Order.Number, [5, 3, 1, 4, 2])
  const top2 = yield* TxPriorityQueue.takeUpTo(pq, 2)
  console.log(top2) // [1, 2]
})
```

**Signature**

```ts
declare const takeUpTo: { (n: number): <A>(self: TxPriorityQueue<A>) => Effect.Effect<Array<A>, never, Effect.Transaction>; <A>(self: TxPriorityQueue<A>, n: number): Effect.Effect<Array<A>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L428)

Since v4.0.0