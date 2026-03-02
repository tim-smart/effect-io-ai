Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.split

Splits this chunk into `n` equally sized chunks.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5, 6, 7, 8, 9)
const chunks = Chunk.split(chunk, 3)
console.log(Chunk.toArray(chunks).map(Chunk.toArray))
// [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

// Uneven split
const chunk2 = Chunk.make(1, 2, 3, 4, 5, 6, 7, 8)
const chunks2 = Chunk.split(chunk2, 3)
console.log(Chunk.toArray(chunks2).map(Chunk.toArray))
// [[1, 2, 3], [4, 5, 6], [7, 8]]

// Split into 1 chunk
const chunks3 = Chunk.split(chunk, 1)
console.log(Chunk.toArray(chunks3).map(Chunk.toArray))
// [[1, 2, 3, 4, 5, 6, 7, 8, 9]]
```

**Signature**

```ts
declare const split: { (n: number): <A>(self: Chunk<A>) => Chunk<Chunk<A>>; <A>(self: Chunk<A>, n: number): Chunk<Chunk<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1972)

Since v2.0.0