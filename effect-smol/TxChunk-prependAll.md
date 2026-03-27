Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.prependAll

Concatenates another chunk to the beginning of the `TxChunk`.

**Mutation behavior**: This function mutates the original TxChunk by prepending
all elements from the other chunk. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([4, 5, 6])
  const otherChunk = Chunk.fromIterable([1, 2, 3])

  // Prepend all elements from another chunk
  // Prepend all elements from another chunk - automatically transactional
  yield* TxChunk.prependAll(txChunk, otherChunk)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [1, 2, 3, 4, 5, 6]
})
```

**Signature**

```ts
declare const prependAll: { <A>(other: Chunk.Chunk<A>): (self: TxChunk<A>) => Effect.Effect<void>; <A>(self: TxChunk<A>, other: Chunk.Chunk<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L716)

Since v4.0.0