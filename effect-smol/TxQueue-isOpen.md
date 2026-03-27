Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.isOpen

Checks if the queue is in the open state.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)

  const open = yield* TxQueue.isOpen(queue)
  console.log(open) // true

  yield* TxQueue.interrupt(queue)
  const stillOpen = yield* TxQueue.isOpen(queue)
  console.log(stillOpen) // false
})
```

**Signature**

```ts
declare const isOpen: (self: TxQueueState) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1391)

Since v4.0.0