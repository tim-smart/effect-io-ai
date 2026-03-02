Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.takeN

Takes exactly N items from the queue in a single atomic transaction.

This function waits (retries the transaction) until N items are available, then takes
exactly N items. The only exception is when N exceeds the queue's capacity - in that
case, it takes up to the queue's capacity and returns immediately.

**Behavior**:
- **Normal case**: Waits for exactly N items to be available
- **Bounded queue with N > capacity**: Takes up to capacity items immediately
- **Closing queue**: Takes available items and transitions to Done state

**Mutation behavior**: This function mutates the original TxQueue by removing
the taken items. It does not return a new TxQueue reference.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(5)
  yield* TxQueue.offerAll(queue, [1, 2, 3])

  // This will wait until 4 items are available
  // (will retry transaction until more items are offered)
  const items = yield* TxQueue.takeN(queue, 4)

  // This requests more than capacity (5), so takes all available (up to 5)
  const all = yield* TxQueue.takeN(queue, 10) // Takes at most 5 items
})
```

**Signature**

```ts
declare const takeN: { (n: number): <A, E>(self: TxDequeue<A, E>) => Effect.Effect<Array<A>, E, Effect.Transaction>; <A, E>(self: TxDequeue<A, E>, n: number): Effect.Effect<Array<A>, E, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L864)

Since v4.0.0