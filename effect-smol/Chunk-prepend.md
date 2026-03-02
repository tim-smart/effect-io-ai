Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.prepend

Prepend an element to the front of a `Chunk`, creating a new `NonEmptyChunk`.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(2, 3, 4)
const newChunk = Chunk.prepend(chunk, 1)
console.log(Chunk.toArray(newChunk)) // [1, 2, 3, 4]

// Prepending to empty chunk
const emptyChunk = Chunk.empty<string>()
const singleElement = Chunk.prepend(emptyChunk, "first")
console.log(Chunk.toArray(singleElement)) // ["first"]
```

**Signature**

```ts
declare const prepend: { <B>(elem: B): <A>(self: Chunk<A>) => NonEmptyChunk<B | A>; <A, B>(self: Chunk<A>, elem: B): NonEmptyChunk<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L730)

Since v2.0.0