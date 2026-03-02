Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.dedupeAdjacent

Deduplicates adjacent elements that are identical.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 1, 2, 2, 2, 3, 1, 1)
const result = Chunk.dedupeAdjacent(chunk)
console.log(Chunk.toArray(result)) // [1, 2, 3, 1]

// Only removes adjacent duplicates, not all duplicates
const mixed = Chunk.make("a", "a", "b", "a", "a")
const mixedResult = Chunk.dedupeAdjacent(mixed)
console.log(Chunk.toArray(mixedResult)) // ["a", "b", "a"]
```

**Signature**

```ts
declare const dedupeAdjacent: <A>(self: Chunk<A>) => Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2211)

Since v2.0.0