Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.reduceRight

Reduces the elements of a chunk from right to left.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)
const result = Chunk.reduceRight(chunk, 0, (acc, n) => acc + n)
console.log(result) // 10

// String building (right to left)
const words = Chunk.make("a", "b", "c")
const reversed = Chunk.reduceRight(
  words,
  "",
  (acc, word, i) => acc + `${i}:${word} `
)
console.log(reversed) // "2:c 1:b 0:a "

// Subtract from right to left
const subtraction = Chunk.reduceRight(chunk, 0, (acc, n) => n - acc)
console.log(subtraction) // -2 (4 - (3 - (2 - (1 - 0))))
```

**Signature**

```ts
declare const reduceRight: { <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Chunk<A>) => B; <A, B>(self: Chunk<A>, b: B, f: (b: B, a: A, i: number) => B): B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2794)

Since v2.0.0