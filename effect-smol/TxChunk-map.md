Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.map

Maps each element of the `TxChunk` using the provided function.
Note: This only works when the mapped type B is assignable to A.

**Mutation behavior**: This function mutates the original TxChunk by transforming
each element in place. It does not return a new TxChunk reference.

**Example**

```ts
import { Chunk, Effect, TxChunk } from "effect"

const program = Effect.gen(function*() {
  const txChunk = yield* TxChunk.fromIterable([1, 2, 3, 4])

  // Transform each element (must maintain same type)
  // Transform each element (must maintain same type) - automatically transactional
  yield* TxChunk.map(txChunk, (n) => n * 2)

  const result = yield* TxChunk.get(txChunk)
  console.log(Chunk.toReadonlyArray(result)) // [2, 4, 6, 8]
})
```

**Signature**

```ts
declare const map: { <A>(f: (a: NoInfer<A>) => A): (self: TxChunk<A>) => Effect.Effect<void>; <A>(self: TxChunk<A>, f: (a: A) => A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L611)

Since v4.0.0