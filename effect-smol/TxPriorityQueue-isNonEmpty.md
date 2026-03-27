Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.isNonEmpty

Returns `true` if the queue has at least one element.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.fromIterable(Order.Number, [1])
  const nonEmpty = yield* TxPriorityQueue.isNonEmpty(pq)
  console.log(nonEmpty) // true
})
```

**Signature**

```ts
declare const isNonEmpty: <A>(self: TxPriorityQueue<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L221)

Since v4.0.0