Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.takeBetween

Takes a variable number of items between a specified minimum and maximum from the queue.
Waits for at least the minimum number of items to be available.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)
  yield* TxQueue.offerAll(queue, [1, 2, 3, 4, 5, 6, 7, 8])

  // Take between 2 and 5 items
  const batch1 = yield* TxQueue.takeBetween(queue, 2, 5)
  console.log(batch1) // [1, 2, 3, 4, 5] - took 5 (up to max)

  // Take between 1 and 10 items (but only 3 remain)
  const batch2 = yield* TxQueue.takeBetween(queue, 1, 10)
  console.log(batch2) // [6, 7, 8] - took 3 (all remaining)

  // Would wait for at least 1 item to be available
  // const batch3 = yield* TxQueue.takeBetween(queue, 1, 3)
})
```

**Signature**

```ts
declare const takeBetween: { (min: number, max: number): <A, E>(self: TxDequeue<A, E>) => Effect.Effect<Array<A>, E, Effect.Transaction>; <A, E>(self: TxDequeue<A, E>, min: number, max: number): Effect.Effect<Array<A>, E, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L952)

Since v4.0.0