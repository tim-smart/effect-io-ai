Package: `effect`<br />
Module: `TxPriorityQueue`<br />

## TxPriorityQueue.retainIf

Retains only elements matching the predicate.

**Example**

```ts
import { Effect, Order, TxPriorityQueue } from "effect"

const program = Effect.gen(function*() {
  const pq = yield* TxPriorityQueue.fromIterable(Order.Number, [1, 2, 3, 4, 5])
  yield* TxPriorityQueue.retainIf(pq, (n) => n % 2 === 0)
  const all = yield* TxPriorityQueue.takeAll(pq)
  console.log(all) // [2, 4]
})
```

**Signature**

```ts
declare const retainIf: { <A>(predicate: Predicate<A>): (self: TxPriorityQueue<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxPriorityQueue<A>, predicate: Predicate<A>): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPriorityQueue.ts#L489)

Since v4.0.0