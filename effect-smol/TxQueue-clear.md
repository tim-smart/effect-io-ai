Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.clear

Removes and returns all currently buffered elements without changing the
queue state.

If the queue is already done with a `Cause.Done` error, returns an empty
array. If the queue is done for any other cause, including interruption or
failure, that cause is propagated.

**Example** (Clearing queues)

```ts
import { Effect, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const queue = yield* TxQueue.bounded<number>(10)
  yield* TxQueue.offerAll(queue, [1, 2, 3, 4, 5])

  const sizeBefore = yield* TxQueue.size(queue)
  console.log(sizeBefore) // 5

  const cleared = yield* TxQueue.clear(queue)
  console.log(cleared) // [1, 2, 3, 4, 5]

  const sizeAfter = yield* TxQueue.size(queue)
  console.log(sizeAfter) // 0
})
```

**Signature**

```ts
declare const clear: <A, E>(self: TxEnqueue<A, E>) => Effect.Effect<Array<A>, ExcludeDone<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1312)

Since v4.0.0