Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.reduce

Reduces the elements of a chunk from left to right.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const sum = Chunk.reduce(chunk, 0, (acc, n) => acc + n)
console.log(sum) // 15

// String concatenation with index
const words = Chunk.make("a", "b", "c")
const result = Chunk.reduce(words, "", (acc, word, i) => acc + `${i}:${word} `)
console.log(result) // "0:a 1:b 2:c "

// Find maximum
const max = Chunk.reduce(chunk, -Infinity, (acc, n) => Math.max(acc, n))
console.log(max) // 5
```

**Signature**

```ts
declare const reduce: { <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Chunk<A>) => B; <A, B>(self: Chunk<A>, b: B, f: (b: B, a: A, i: number) => B): B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2756)

Since v2.0.0