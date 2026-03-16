Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.differenceWith

Creates a `Chunk` of values not included in the other given `Chunk` using the provided `isEquivalent` function.
The order and references of result values are determined by the first `Chunk`.

**Example**

```ts
import { Chunk } from "effect"

const chunk1 = Chunk.make({ id: 1, name: "Alice" }, { id: 2, name: "Bob" })
const chunk2 = Chunk.make({ id: 1, name: "Alice" }, { id: 3, name: "Charlie" })

// Custom equivalence by id
const byId = Chunk.differenceWith<{ id: number; name: string }>((a, b) =>
  a.id === b.id
)
const result = byId(chunk1, chunk2)
console.log(Chunk.toArray(result)) // [{ id: 2, name: "Bob" }]

// String comparison case-insensitive
const words1 = Chunk.make("Apple", "Banana", "Cherry")
const words2 = Chunk.make("apple", "grape")
const caseInsensitive = Chunk.differenceWith<string>((a, b) =>
  a.toLowerCase() === b.toLowerCase()
)
const wordDiff = caseInsensitive(words1, words2)
console.log(Chunk.toArray(wordDiff)) // ["Banana", "Cherry"]
```

**Signature**

```ts
declare const differenceWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (that: Chunk<A>): (self: Chunk<A>) => Chunk<A>; (self: Chunk<A>, that: Chunk<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2830)

Since v3.2.0