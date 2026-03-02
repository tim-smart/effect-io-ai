Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.awaitCompletion

Waits for the queue to complete (either successfully or with failure).

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number, string>(10)

  // In another fiber, end the queue
  yield* Effect.forkChild(Effect.delay(TxQueue.interrupt(queue), "100 millis"))

  // Wait for completion - succeeds when queue ends
  yield* TxQueue.awaitCompletion(queue)
  console.log("Queue completed successfully")
})
```

**Signature**

```ts
declare const awaitCompletion: (self: TxQueueState) => Effect.Effect<void, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1505)

Since v4.0.0