Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.empty

Creates an empty `TxPriorityQueue` with the given ordering.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.empty<number>(Order.Number)
  const empty = yield* TxPriorityQueue.isEmpty(pq)
  console.log(empty) // true
})
```

**Signature**

```ts
declare const empty: <A>(order: Order<A>) => Effect.Effect<TxPriorityQueue<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L112)

Since v4.0.0