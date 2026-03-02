Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.make

Creates a new `TxChunk` with the specified initial chunk.

**Return behavior**: This function returns a new TxChunk reference containing
the provided initial chunk. No existing TxChunk instances are modified.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  // Create a TxChunk with initial values
  const initialChunk = Chunk.fromIterable([1, 2, 3])
  const txChunk = yield* TxChunk.make(initialChunk)

  // Read the value - automatically transactional
  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [1, 2, 3]
})
```

**Signature**

```ts
declare const make: <A>(initial: Chunk.Chunk<A>) => Effect.Effect<TxChunk<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L112)

Since v4.0.0