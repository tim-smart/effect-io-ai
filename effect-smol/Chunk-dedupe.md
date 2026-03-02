Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.dedupe

Remove duplicates from an array, keeping the first occurrence of an element.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 2, 3, 1, 4, 3)
const result = Chunk.dedupe(chunk)
console.log(Chunk.toArray(result)) // [1, 2, 3, 4]

// Empty chunk
const empty = Chunk.empty<number>()
const emptyDeduped = Chunk.dedupe(empty)
console.log(Chunk.toArray(emptyDeduped)) // []

// No duplicates
const unique = Chunk.make(1, 2, 3)
const uniqueDeduped = Chunk.dedupe(unique)
console.log(Chunk.toArray(uniqueDeduped)) // [1, 2, 3]
```

**Signature**

```ts
declare const dedupe: <A>(self: Chunk<A>) => Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2189)

Since v2.0.0