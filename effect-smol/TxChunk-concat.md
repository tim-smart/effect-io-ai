Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.concat

Concatenates another `TxChunk` to the end of this `TxChunk`.

**Mutation behavior**: This function mutates the original TxChunk by appending
all elements from the other TxChunk. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk1 = yield* TxChunk.fromIterable([1, 2, 3])
  const txChunk2 = yield* TxChunk.fromIterable([4, 5, 6])

  // Concatenate atomically within a transaction
  yield* TxChunk.concat(txChunk1, txChunk2)

  const result = yield* TxChunk.get(txChunk1)
  console.log(Chunk.toReadonlyArray(result)) // [1, 2, 3, 4, 5, 6]

  // Original txChunk2 is unchanged
  const original = yield* TxChunk.get(txChunk2)
  console.log(Chunk.toReadonlyArray(original)) // [4, 5, 6]
})
```

**Signature**

```ts
declare const concat: { <A>(other: TxChunk<A>): (self: TxChunk<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxChunk<A>, other: TxChunk<A>): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L762)

Since v4.0.0