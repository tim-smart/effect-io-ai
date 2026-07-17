Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.append

Appends the specified element to the end of the `Chunk`.

**When to use**

Use to add one element after the existing chunk elements and return a
`NonEmptyChunk`.

**Example** (Appending an element)

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3)
const newChunk = Chunk.append(chunk, 4)
console.log(Chunk.toArray(newChunk)) // [1, 2, 3, 4]

// Appending to empty chunk
const emptyChunk = Chunk.empty<number>()
const singleElement = Chunk.append(emptyChunk, 42)
console.log(Chunk.toArray(singleElement)) // [42]
```

**See**

- `prepend` for adding one element before the existing elements
- `appendAll` for appending all elements from another chunk

**Signature**

```ts
declare const append: { <A2>(a: A2): <A>(self: Chunk<A>) => NonEmptyChunk<A2 | A>; <A, A2>(self: Chunk<A>, a: A2): NonEmptyChunk<A | A2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L695)

Since v2.0.0