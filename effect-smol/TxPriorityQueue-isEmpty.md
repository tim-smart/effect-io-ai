Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.isEmpty

Returns `true` if the queue is empty.

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
declare const isEmpty: <A>(self: TxPriorityQueue<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L202)

Since v4.0.0