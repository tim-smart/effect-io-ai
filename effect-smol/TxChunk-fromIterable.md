Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.fromIterable

Creates a new `TxChunk` from an iterable.

**Return behavior**: This function returns a new TxChunk reference containing
elements from the provided iterable. No existing TxChunk instances are modified.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  // Create TxChunk from array
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3, 4, 5])

  // Read the contents - automatically transactional
  const chunk = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(chunk)) // [1, 2, 3, 4, 5]

  // Multi-step atomic modification - use explicit transaction
  yield* Effect.transaction(
    Effect.gen(function*() {
      yield* TxChunk.append(txChunk, 6)
      yield* TxChunk.prepend(txChunk, 0)
    })
  )

  const updated = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(updated)) // [0, 1, 2, 3, 4, 5, 6]
})
```

**Signature**

```ts
declare const fromIterable: <A>(iterable: Iterable<A>) => Effect.Effect<TxChunk<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L179)

Since v4.0.0