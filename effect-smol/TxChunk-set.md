Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.set

Sets the value of the `TxChunk`.

**Mutation behavior**: This function mutates the original TxChunk by replacing
its internal state with the provided chunk. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3])

  // Replace the entire chunk content
  const newChunk = Chunk.fromIterable([10, 20, 30, 40])
  yield* TxChunk.set(txChunk, newChunk)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [10, 20, 30, 40]
})
```

**Signature**

```ts
declare const set: { <A>(chunk: Chunk.Chunk<A>): (self: TxChunk<A>) => Effect.Effect<void>; <A>(self: TxChunk<A>, chunk: Chunk.Chunk<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L337)

Since v4.0.0