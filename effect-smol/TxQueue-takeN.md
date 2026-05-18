Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.takeN

Takes up to `n` items from the queue in a single transaction.

For an open queue, waits until `min(n, capacity)` items are available, then
removes that many items. If `n` is less than or equal to zero, returns an
empty array without modifying the queue. If the queue is closing, drains the
currently available items and transitions to `Done`. If the queue is already
done, the effect fails with the queue's completion cause.

**Mutation behavior**: This function mutates the original TxQueue by removing
the taken items. It does not return a new TxQueue reference.

**Example** (Taking a fixed number of values)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(5)
  yield* TxQueue.offerAll(queue, [1, 2, 3, 4])

  const items = yield* TxQueue.takeN(queue, 4)
  console.log(items) // [1, 2, 3, 4]

  // This requests more than capacity (5), so takes all available (up to 5)
  yield* TxQueue.offerAll(queue, [5, 6, 7, 8, 9])
  const all = yield* TxQueue.takeN(queue, 10)
  console.log(all) // [5, 6, 7, 8, 9]
})
```

**Signature**

```ts
declare const takeN: { (n: number): <A, E>(self: TxDequeue<A, E>) => Effect.Effect<Array<A>, E>; <A, E>(self: TxDequeue<A, E>, n: number): Effect.Effect<Array<A>, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L843)

Since v4.0.0