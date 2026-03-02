Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.isEmpty

Checks if the queue is empty.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)

  const empty = yield* TxQueue.isEmpty(queue)
  console.log(empty) // true

  yield* TxQueue.offer(queue, 42)
  const stillEmpty = yield* TxQueue.isEmpty(queue)
  console.log(stillEmpty) // false
})
```

**Signature**

```ts
declare const isEmpty: (self: TxQueueState) => Effect.Effect<boolean, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1102)

Since v4.0.0