Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.make

Creates a `TxPriorityQueue` from variadic elements.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.make(Order.Number)(3, 1, 2)
  const first = yield* TxPriorityQueue.take(pq)
  console.log(first) // 1
})
```

**Signature**

```ts
declare const make: <A>(order: Order<A>) => (...elements: Array<A>) => Effect.Effect<TxPriorityQueue<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L163)

Since v4.0.0