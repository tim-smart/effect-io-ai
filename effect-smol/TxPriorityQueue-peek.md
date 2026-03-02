Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.peek

Observes the smallest element without removing it. Retries if the queue is
empty.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.fromIterable(Order.Number, [3, 1, 2])
  const top = yield* TxPriorityQueue.peek(pq)
  console.log(top) // 1
})
```

**Signature**

```ts
declare const peek: <A>(self: TxPriorityQueue<A>) => Effect.Effect<A, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L245)

Since v4.0.0