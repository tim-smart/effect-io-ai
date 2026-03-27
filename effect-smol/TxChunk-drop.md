Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.drop

Drops the first `n` elements from the `TxChunk`.

**Mutation behavior**: This function mutates the original TxChunk by removing
the first n elements. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3, 4, 5])

  // Drop the first 2 elements - automatically transactional
  yield* TxChunk.drop(txChunk, 2)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [3, 4, 5]
})
```

**Signature**

```ts
declare const drop: { (n: number): <A>(self: TxChunk<A>) => Effect.Effect<void>; <A>(self: TxChunk<A>, n: number): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L544)

Since v4.0.0