Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.intersection

Creates a Chunk of unique values that are included in all given Chunks.

The order and references of result values are determined by the Chunk.

**Example**

```ts
import { Chunk } from "effect"

const chunk1 = Chunk.make(1, 2, 3, 4)
const chunk2 = Chunk.make(3, 4, 5, 6)
const result = Chunk.intersection(chunk1, chunk2)
console.log(Chunk.toArray(result)) // [3, 4]

// With strings
const words1 = Chunk.make("hello", "world", "foo")
const words2 = Chunk.make("world", "bar", "foo")
console.log(Chunk.toArray(Chunk.intersection(words1, words2))) // ["world", "foo"]

// No intersection
const chunk3 = Chunk.make(1, 2)
const chunk4 = Chunk.make(3, 4)
console.log(Chunk.toArray(Chunk.intersection(chunk3, chunk4))) // []
```

**Signature**

```ts
declare const intersection: { <A>(that: Chunk<A>): <B>(self: Chunk<B>) => Chunk<A & B>; <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A & B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1326)

Since v2.0.0