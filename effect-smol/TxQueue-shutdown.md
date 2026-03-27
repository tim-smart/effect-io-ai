Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.shutdown

Shuts down the queue immediately by clearing all items and interrupting it (legacy compatibility).

This operation performs two atomic steps:
1. **Clears** all items from the queue using `clear()`
2. **Interrupts** the queue using `interrupt()`

**Mutation behavior**: This function mutates the original TxQueue by clearing
its contents and marking it as shutdown. It does not return a new TxQueue reference.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)
  yield* TxQueue.offerAll(queue, [1, 2, 3, 4, 5])

  const sizeBefore = yield* TxQueue.size(queue)
  console.log(sizeBefore) // 5

  yield* TxQueue.shutdown(queue)

  const sizeAfter = yield* TxQueue.size(queue)
  console.log(sizeAfter) // 0 (cleared)

  const isShutdown = yield* TxQueue.isShutdown(queue)
  console.log(isShutdown) // true (interrupted)
})
```

**Signature**

```ts
declare const shutdown: <A, E>(self: TxEnqueue<A, E>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1363)

Since v4.0.0