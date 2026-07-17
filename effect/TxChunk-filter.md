Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.filter

Filters the `TxChunk` keeping only elements that satisfy the predicate.

**Details**

This function mutates the original TxChunk by removing elements that don't match the predicate. It
does not return a new TxChunk reference.

**Example** (Filtering elements)

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3, 4, 5, 6])

  // Keep only even numbers atomically
  yield* TxChunk.filter(txChunk, (n) => n % 2 === 0)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [2, 4, 6]
})
```

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: (a: A) => a is B): (self: TxChunk<A>) => Effect.Effect<void>; <A>(predicate: (a: A) => boolean): (self: TxChunk<A>) => Effect.Effect<void>; <A, B extends A>(self: TxChunk<A>, refinement: (a: A) => a is B): Effect.Effect<void>; <A>(self: TxChunk<A>, predicate: (a: A) => boolean): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxChunk.ts#L695)

Since v4.0.0