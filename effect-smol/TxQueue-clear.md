Package: `effect`<br />
Module: `TxQueue`<br />

## TxQueue.clear

Clears all elements from the queue without affecting its state.
Returns the cleared elements, or an empty array if the queue is done with Done or interrupt.

**Mutation behavior**: This function mutates the original TxQueue by removing
all elements. It does not return a new TxQueue reference.

**Example**

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
declare const clear: <A, E>(self: TxEnqueue<A, E>) => Effect.Effect<Array<A>, ExcludeDone<E>, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxQueue.ts#L1319)

Since v4.0.0