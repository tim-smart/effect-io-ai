Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.take

Takes the smallest element from the queue. Retries if the queue is empty.

**Example** (Taking the next value)

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
declare const take: <A>(self: TxPriorityQueue<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L388)

Since v2.0.0