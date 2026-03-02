Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.isClosing

Checks if the queue is in the closing state.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)
  yield* TxQueue.offer(queue, 42)

  const closing = yield* TxQueue.isClosing(queue)
  console.log(closing) // false

  yield* TxQueue.interrupt(queue)
  const nowClosing = yield* TxQueue.isClosing(queue)
  console.log(nowClosing) // true
})
```

**Signature**

```ts
declare const isClosing: (self: TxQueueState) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1425)

Since v4.0.0