Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.flatten

Flattens a chunk of chunks into a single chunk by concatenating all chunks.

**Example**

```ts
import { Chunk } from "effect"

const nested = Chunk.make(
  Chunk.make(1, 2),
  Chunk.make(3, 4, 5),
  Chunk.make(6)
)
const flattened = Chunk.flatten(nested)
console.log(Chunk.toArray(flattened)) // [1, 2, 3, 4, 5, 6]

// With empty chunks
const withEmpty = Chunk.make(
  Chunk.make(1, 2),
  Chunk.empty<number>(),
  Chunk.make(3, 4)
)
console.log(Chunk.toArray(Chunk.flatten(withEmpty))) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const flatten: <S extends Chunk<Chunk<any>>>(self: S) => Chunk.Flatten<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1254)

Since v2.0.0