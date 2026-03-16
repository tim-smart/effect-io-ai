Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.splitAt

Returns two splits of this chunk at the specified index.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5, 6)
const [before, after] = Chunk.splitAt(chunk, 3)
console.log(Chunk.toArray(before)) // [1, 2, 3]
console.log(Chunk.toArray(after)) // [4, 5, 6]

// Split at index 0
const [empty, all] = Chunk.splitAt(chunk, 0)
console.log(Chunk.toArray(empty)) // []
console.log(Chunk.toArray(all)) // [1, 2, 3, 4, 5, 6]

// Split beyond length
const [allElements, empty2] = Chunk.splitAt(chunk, 10)
console.log(Chunk.toArray(allElements)) // [1, 2, 3, 4, 5, 6]
console.log(Chunk.toArray(empty2)) // []
```

**Signature**

```ts
declare const splitAt: { (n: number): <A>(self: Chunk<A>) => [beforeIndex: Chunk<A>, fromIndex: Chunk<A>]; <A>(self: Chunk<A>, n: number): [beforeIndex: Chunk<A>, fromIndex: Chunk<A>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1904)

Since v2.0.0