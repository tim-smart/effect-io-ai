Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.append

Appends an element to the end of the `TxChunk`.

**Mutation behavior**: This function mutates the original TxChunk by adding
the element to the end. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3])

  // Add element to the end atomically
  yield* TxChunk.append(txChunk, 4)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [1, 2, 3, 4]
})
```

**Signature**

```ts
declare const append: { <A>(element: A): (self: TxChunk<A>) => Effect.Effect<void>; <A>(self: TxChunk<A>, element: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L369)

Since v4.0.0