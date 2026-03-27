Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.update

Updates the value of the `TxChunk` using the provided function.

**Mutation behavior**: This function mutates the original TxChunk by updating
its internal state. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3])

  // Update the chunk by reversing it
  // Update the chunk by reversing it - automatically transactional
  yield* TxChunk.update(txChunk, (chunk) => Chunk.reverse(chunk))

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [3, 2, 1]
})
```

**Signature**

```ts
declare const update: { <A>(f: (current: Chunk.Chunk<NoInfer<A>>) => Chunk.Chunk<A>): (self: TxChunk<A>) => Effect.Effect<void>; <A>(self: TxChunk<A>, f: (current: Chunk.Chunk<A>) => Chunk.Chunk<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L276)

Since v4.0.0