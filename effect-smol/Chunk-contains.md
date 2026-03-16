Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.contains

Returns a function that checks if a `Chunk` contains a given value using the default `Equivalence`.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
console.log(Chunk.contains(chunk, 3)) // true
console.log(Chunk.contains(chunk, 6)) // false

// Works with strings
const words = Chunk.make("apple", "banana", "cherry")
console.log(Chunk.contains(words, "banana")) // true
console.log(Chunk.contains(words, "grape")) // false

// Empty chunk
const empty = Chunk.empty<number>()
console.log(Chunk.contains(empty, 1)) // false
```

**Signature**

```ts
declare const contains: { <A>(a: A): (self: Chunk<A>) => boolean; <A>(self: Chunk<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2467)

Since v2.0.0