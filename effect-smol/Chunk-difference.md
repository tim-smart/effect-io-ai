Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.difference

Creates a `Chunk` of values not included in the other given `Chunk`.
The order and references of result values are determined by the first `Chunk`.

**Example**

```ts
import { Chunk } from "effect"

const chunk1 = Chunk.make(1, 2, 3, 4, 5)
const chunk2 = Chunk.make(3, 4, 6, 7)
const result = Chunk.difference(chunk1, chunk2)
console.log(Chunk.toArray(result)) // [1, 2, 5]

// String difference
const words1 = Chunk.make("apple", "banana", "cherry")
const words2 = Chunk.make("banana", "grape")
const wordDiff = Chunk.difference(words1, words2)
console.log(Chunk.toArray(wordDiff)) // ["apple", "cherry"]

// Empty second chunk returns original
const empty = Chunk.empty<number>()
const unchanged = Chunk.difference(chunk1, empty)
console.log(Chunk.toArray(unchanged)) // [1, 2, 3, 4, 5]
```

**Signature**

```ts
declare const difference: { <A>(that: Chunk<A>): (self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, that: Chunk<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2868)

Since v3.2.0