Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.peekOption

Observes the smallest element without removing it. Returns `None` if the
queue is empty.

**Example** (Peeking without retrying)

```ts
import { Effect, Option, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.empty<number>(Order.Number)
  const result = yield* TxPriorityQueue.peekOption(pq)
  console.log(Option.isNone(result)) // true
})
```

**Signature**

```ts
declare const peekOption: <A>(self: TxPriorityQueue<A>) => Effect.Effect<Option<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L278)

Since v2.0.0