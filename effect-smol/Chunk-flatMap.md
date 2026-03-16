Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.flatMap

Applies a function to each element in a chunk and returns a new chunk containing the concatenated mapped elements.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3)
const duplicated = Chunk.flatMap(chunk, (n) => Chunk.make(n, n))
console.log(Chunk.toArray(duplicated)) // [1, 1, 2, 2, 3, 3]

// Flattening nested arrays
const words = Chunk.make("hello", "world")
const letters = Chunk.flatMap(
  words,
  (word) => Chunk.fromIterable(word.split(""))
)
console.log(Chunk.toArray(letters)) // ["h", "e", "l", "l", "o", "w", "o", "r", "l", "d"]

// With index parameter
const indexed = Chunk.flatMap(chunk, (n, i) => Chunk.make(n + i))
console.log(Chunk.toArray(indexed)) // [1, 3, 5]
```

**Signature**

```ts
declare const flatMap: { <S extends Chunk<any>, T extends Chunk<any>>(f: (a: Chunk.Infer<S>, i: number) => T): (self: S) => Chunk.AndNonEmpty<S, T, Chunk.Infer<T>>; <A, B>(self: NonEmptyChunk<A>, f: (a: A, i: number) => NonEmptyChunk<B>): NonEmptyChunk<B>; <A, B>(self: Chunk<A>, f: (a: A, i: number) => Chunk<B>): Chunk<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1167)

Since v2.0.0