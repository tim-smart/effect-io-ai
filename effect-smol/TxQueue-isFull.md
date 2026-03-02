Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.isFull

Checks if the queue is at capacity.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(2)

  const full = yield* TxQueue.isFull(queue)
  console.log(full) // false

  yield* TxQueue.offerAll(queue, [1, 2])
  const nowFull = yield* TxQueue.isFull(queue)
  console.log(nowFull) // true
})
```

**Signature**

```ts
declare const isFull: (self: TxQueueState) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1127)

Since v4.0.0