Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.union

Creates a Chunks of unique values, in order, from all given Chunks.

**Example**

```ts
import { Chunk } from "effect"

const chunk1 = Chunk.make(1, 2, 3)
const chunk2 = Chunk.make(3, 4, 5)
const result = Chunk.union(chunk1, chunk2)
console.log(Chunk.toArray(result)) // [1, 2, 3, 4, 5]

// Handles duplicates within the same chunk
const withDupes1 = Chunk.make(1, 1, 2)
const withDupes2 = Chunk.make(2, 3, 3)
const unified = Chunk.union(withDupes1, withDupes2)
console.log(Chunk.toArray(unified)) // [1, 2, 3]
```

**Signature**

```ts
declare const union: { <A>(that: Chunk<A>): <B>(self: Chunk<B>) => Chunk<A | B>; <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2156)

Since v2.0.0