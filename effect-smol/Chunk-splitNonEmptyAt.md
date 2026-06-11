Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.splitNonEmptyAt

Splits a `NonEmptyChunk` at `n`, returning a non-empty prefix and the
remaining suffix.

**Details**

`n` is floored and normalized to at least `1`. If `n` is greater than or
equal to the chunk length, the first result is the original chunk and the
second result is empty.

**Example** (Splitting non-empty chunks at an index)

```ts
import { Chunk } from "effect"

const nonEmptyChunk = Chunk.make(1, 2, 3, 4, 5, 6)
const [before, after] = Chunk.splitNonEmptyAt(nonEmptyChunk, 3)
console.log(Chunk.toArray(before)) // [1, 2, 3]
console.log(Chunk.toArray(after)) // [4, 5, 6]

// Split at 1 (minimum)
const [first, rest] = Chunk.splitNonEmptyAt(nonEmptyChunk, 1)
console.log(Chunk.toArray(first)) // [1]
console.log(Chunk.toArray(rest)) // [2, 3, 4, 5, 6]

// The first part is guaranteed to be NonEmptyChunk
// while the second part may be empty
```

**Signature**

```ts
declare const splitNonEmptyAt: { (n: number): <A>(self: NonEmptyChunk<A>) => [beforeIndex: NonEmptyChunk<A>, fromIndex: Chunk<A>]; <A>(self: NonEmptyChunk<A>, n: number): [beforeIndex: NonEmptyChunk<A>, fromIndex: Chunk<A>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1993)

Since v2.0.0