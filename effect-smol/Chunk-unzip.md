Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.unzip

Takes a `Chunk` of pairs and return two corresponding `Chunk`s.

Note: The function is reverse of `zip`.

**Example**

```ts
import { Chunk } from "effect"

const pairs = Chunk.make(
  [1, "a"] as const,
  [2, "b"] as const,
  [3, "c"] as const
)
const [numbers, letters] = Chunk.unzip(pairs)
console.log(Chunk.toArray(numbers)) // [1, 2, 3]
console.log(Chunk.toArray(letters)) // ["a", "b", "c"]

// Empty chunk
const empty = Chunk.empty<[number, string]>()
const [emptyNums, emptyStrs] = Chunk.unzip(empty)
console.log(Chunk.toArray(emptyNums)) // []
console.log(Chunk.toArray(emptyStrs)) // []
```

**Signature**

```ts
declare const unzip: <A, B>(self: Chunk<readonly [A, B]>) => [Chunk<A>, Chunk<B>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2240)

Since v2.0.0