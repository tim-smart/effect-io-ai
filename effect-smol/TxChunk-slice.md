Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.slice

Takes a slice of the `TxChunk` from `start` to `end` (exclusive).

**Mutation behavior**: This function mutates the original TxChunk by keeping
only the elements in the specified range. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3, 4, 5, 6, 7])

  // Take elements from index 2 to 5 (exclusive) - automatically transactional
  yield* TxChunk.slice(txChunk, 2, 5)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [3, 4, 5]
})
```

**Signature**

```ts
declare const slice: { (start: number, end: number): <A>(self: TxChunk<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxChunk<A>, start: number, end: number): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L584)

Since v4.0.0