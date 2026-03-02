Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.prepend

Prepends an element to the beginning of the `TxChunk`.

**Mutation behavior**: This function mutates the original TxChunk by adding
the element to the beginning. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([2, 3, 4])

  // Add element to the beginning atomically
  yield* TxChunk.prepend(txChunk, 1)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [1, 2, 3, 4]
})
```

**Signature**

```ts
declare const prepend: { <A>(element: A): (self: TxChunk<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxChunk<A>, element: A): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L406)

Since v4.0.0