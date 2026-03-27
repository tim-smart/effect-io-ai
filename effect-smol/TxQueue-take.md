Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.take

Takes an item from the queue.

**Mutation behavior**: This function mutates the original TxQueue by removing
the first item. It does not return a new TxQueue reference.

**Example**

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number, string>(10)
  yield* TxQueue.offer(queue, 42)

  // Take an item - blocks if empty
  const item = yield* TxQueue.take(queue)
  console.log(item) // 42

  // When queue fails, take fails with the same error
  yield* TxQueue.fail(queue, "queue error")
  const result = yield* Effect.flip(TxQueue.take(queue))
  console.log(result) // "queue error"
})
```

**Signature**

```ts
declare const take: <A, E>(self: TxDequeue<A, E>) => Effect.Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L690)

Since v4.0.0