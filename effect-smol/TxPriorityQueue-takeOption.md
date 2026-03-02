Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.takeOption

Tries to take the smallest element. Returns `None` if the queue is empty.

**Example**

```ts
import { Effect, Option, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.empty<number>(Order.Number)
  const result = yield* TxPriorityQueue.takeOption(pq)
  console.log(Option.isNone(result)) // true
})
```

**Signature**

```ts
declare const takeOption: <A>(self: TxPriorityQueue<A>) => Effect.Effect<Option<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L402)

Since v4.0.0