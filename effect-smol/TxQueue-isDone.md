Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.isDone

Checks if the queue is done (completed or failed).

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)

  const done = yield* TxQueue.isDone(queue)
  console.log(done) // false

  yield* TxQueue.interrupt(queue)
  const nowDone = yield* TxQueue.isDone(queue)
  console.log(nowDone) // true
})
```

**Signature**

```ts
declare const isDone: (self: TxQueueState) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1442)

Since v4.0.0