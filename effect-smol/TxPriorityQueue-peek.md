Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.peek

Observes the smallest element without removing it.

**When to use**

Use to inspect the next prioritized value and retry transactionally while
the queue is empty.

**Example** (Peeking at the next value)

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
declare const peek: <A>(self: TxPriorityQueue<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L282)

Since v2.0.0