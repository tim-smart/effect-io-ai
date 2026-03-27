Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.toArray

Returns all elements in priority order without removing them.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.fromIterable(Order.Number, [3, 1, 2])
  const all = yield* TxPriorityQueue.toArray(pq)
  console.log(all) // [1, 2, 3]
})
```

**Signature**

```ts
declare const toArray: <A>(self: TxPriorityQueue<A>) => Effect.Effect<Array<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L511)

Since v4.0.0