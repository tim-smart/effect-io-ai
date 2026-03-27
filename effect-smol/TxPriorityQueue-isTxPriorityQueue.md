Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.isTxPriorityQueue

Determines if the provided value is a `TxPriorityQueue`.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.empty<number>(Order.Number)
  console.log(TxPriorityQueue.isTxPriorityQueue(pq)) // true
  console.log(TxPriorityQueue.isTxPriorityQueue("nope")) // false
})
```

**Signature**

```ts
declare const isTxPriorityQueue: (u: unknown) => u is TxPriorityQueue<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L531)

Since v4.0.0