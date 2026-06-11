Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.isShutdown

Checks whether the queue is shutdown (legacy compatibility).

**Example** (Checking shutdown state)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)

  const isShutdown = yield* TxQueue.isShutdown(queue)
  console.log(isShutdown) // false

  yield* TxQueue.shutdown(queue)
  const nowShutdown = yield* TxQueue.isShutdown(queue)
  console.log(nowShutdown) // true
})
```

**Signature**

```ts
declare const isShutdown: (self: TxQueueState) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1453)

Since v2.0.0