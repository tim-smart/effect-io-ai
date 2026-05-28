Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.chunksOf

Groups elements in chunks of up to `n` elements.

**When to use**

Use to divide a chunk into ordered, non-overlapping batches with at most `n`
elements each.

**Details**

The final chunk may contain fewer than `n` elements. Empty input produces an
empty chunk of chunks.

**Gotchas**

Values of `n` less than or equal to zero produce singleton chunks.

**Example** (Splitting into fixed-size chunks)

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5, 6, 7, 8, 9)
const chunked = Chunk.chunksOf(chunk, 3)

console.log(Chunk.toArray(chunked).map(Chunk.toArray))
// [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

// When length is not evenly divisible
const chunk2 = Chunk.make(1, 2, 3, 4, 5)
const chunked2 = Chunk.chunksOf(chunk2, 2)
console.log(Chunk.toArray(chunked2).map(Chunk.toArray))
// [[1, 2], [3, 4], [5]]
```

**See**

- `split` for splitting into a target number of chunks instead of a fixed chunk size

**Signature**

```ts
declare const chunksOf: { (n: number): <A>(self: Chunk<A>) => Chunk<Chunk<A>>; <A>(self: Chunk<A>, n: number): Chunk<Chunk<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1334)

Since v2.0.0