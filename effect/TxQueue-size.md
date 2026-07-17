Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.size

Gets the current size of the queue.

**Example** (Reading queue size)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)
  yield* TxQueue.offerAll(queue, [1, 2, 3])

  const size = yield* TxQueue.size(queue)
  console.log(size) // 3
})
```

**Signature**

```ts
declare const size: (self: TxQueueState) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxQueue.ts#L1055)

Since v2.0.0