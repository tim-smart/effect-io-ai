Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.splitNonEmptyAt

Splits a `NonEmptyChunk` into two segments, with the first segment containing a maximum of `n` elements.
The value of `n` must be `>= 1`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1934)

Since v2.0.0