Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.zipWith

Zips this chunk pointwise with the specified chunk using the specified combiner.

**Example**

```ts
import { Chunk } from "effect"

const numbers = Chunk.make(1, 2, 3)
const letters = Chunk.make("a", "b", "c")
const result = Chunk.zipWith(numbers, letters, (n, l) => `${n}-${l}`)
console.log(Chunk.toArray(result)) // ["1-a", "2-b", "3-c"]

// Different lengths - takes minimum
const short = Chunk.make(1, 2)
const long = Chunk.make("a", "b", "c", "d")
const mixed = Chunk.zipWith(short, long, (n, l) => [n, l])
console.log(Chunk.toArray(mixed)) // [[1, "a"], [2, "b"]]
```

**Signature**

```ts
declare const zipWith: { <A, B, C>(that: Chunk<B>, f: (a: A, b: B) => C): (self: Chunk<A>) => Chunk<C>; <A, B, C>(self: Chunk<A>, that: Chunk<B>, f: (a: A, b: B) => C): Chunk<C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2267)

Since v2.0.0