Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.TxChunk

TxChunk is a transactional chunk data structure that provides Software Transactional Memory (STM)
semantics for chunk operations.

Accessed values are tracked by the transaction in order to detect conflicts and to track changes.
A transaction will retry whenever a conflict is detected or whenever the transaction explicitly
calls `Effect.txRetry` and any of the accessed TxChunk values change.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  // Create a transactional chunk
  const txChunk: TxChunk.TxChunk<number> = yield* TxChunk.fromIterable([
    1,
    2,
    3
  ])

  // Single operations - no explicit transaction needed
  yield* TxChunk.append(txChunk, 4)
  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [1, 2, 3, 4]

  // Multi-step atomic operation - use explicit transaction
  yield* Effect.tx(
    Effect.gen(function*() {
      yield* TxChunk.prepend(txChunk, 0)
      yield* TxChunk.append(txChunk, 5)
    })
  )

  const finalResult = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(finalResult)) // [0, 1, 2, 3, 4, 5]
})
```

**Signature**

```ts
export interface TxChunk<in out A> extends Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly ref: TxRef.TxRef<Chunk.Chunk<A>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L66)

Since v4.0.0