Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.appendAll

Concatenates another chunk to the end of the `TxChunk`.

**Mutation behavior**: This function mutates the original TxChunk by appending
all elements from the other chunk. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3])
  const otherChunk = Chunk.fromIterable([4, 5, 6])

  // Append all elements from another chunk
  // Append all elements from another chunk - automatically transactional
  yield* TxChunk.appendAll(txChunk, otherChunk)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [1, 2, 3, 4, 5, 6]
})
```

**Signature**

```ts
declare const appendAll: { <A>(other: Chunk.Chunk<A>): (self: TxChunk<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxChunk<A>, other: Chunk.Chunk<A>): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L690)

Since v4.0.0