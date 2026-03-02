Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.take

Takes the first `n` elements from the `TxChunk`.

**Mutation behavior**: This function mutates the original TxChunk by keeping
only the first n elements. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3, 4, 5])

  // Take only the first 3 elements - automatically transactional
  yield* TxChunk.take(txChunk, 3)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [1, 2, 3]
})
```

**Signature**

```ts
declare const take: { (n: number): <A>(self: TxChunk<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxChunk<A>, n: number): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L518)

Since v4.0.0