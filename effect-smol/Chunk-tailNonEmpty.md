Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.tailNonEmpty

Returns every elements after the first.

**Example**

```ts
import { Chunk } from "effect"

const nonEmptyChunk = Chunk.make(1, 2, 3, 4)
const result = Chunk.tailNonEmpty(nonEmptyChunk)
console.log(Chunk.toArray(result)) // [2, 3, 4]

const singleElement = Chunk.make(1)
const resultSingle = Chunk.tailNonEmpty(singleElement)
console.log(Chunk.toArray(resultSingle)) // []

// Type safety: this function only accepts NonEmptyChunk
// Chunk.tailNonEmpty(Chunk.empty()) // TypeScript error
```

**Signature**

```ts
declare const tailNonEmpty: <A>(self: NonEmptyChunk<A>) => Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2063)

Since v2.0.0