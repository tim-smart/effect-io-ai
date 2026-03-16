Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.zip

Zips this chunk pointwise with the specified chunk.

**Example**

```ts
import { Chunk } from "effect"

const numbers = Chunk.make(1, 2, 3)
const letters = Chunk.make("a", "b", "c")
const result = Chunk.zip(numbers, letters)
console.log(Chunk.toArray(result)) // [[1, "a"], [2, "b"], [3, "c"]]

// Different lengths - takes minimum length
const short = Chunk.make(1, 2)
const long = Chunk.make("a", "b", "c", "d")
const zipped = Chunk.zip(short, long)
console.log(Chunk.toArray(zipped)) // [[1, "a"], [2, "b"]]
```

**Signature**

```ts
declare const zip: { <B>(that: Chunk<B>): <A>(self: Chunk<A>) => Chunk<[A, B]>; <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2298)

Since v2.0.0