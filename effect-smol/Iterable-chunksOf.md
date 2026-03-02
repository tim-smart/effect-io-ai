Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.chunksOf

Splits an `Iterable` into length-`n` pieces. The last piece will be shorter if `n` does not evenly divide the length of
the `Iterable`.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
const chunks = Iterable.chunksOf(numbers, 3)
console.log(Array.from(chunks).map((chunk) => Array.from(chunk)))
// [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

// Last chunk can be shorter
const uneven = [1, 2, 3, 4, 5, 6, 7]
const chunks2 = Iterable.chunksOf(uneven, 3)
console.log(Array.from(chunks2).map((chunk) => Array.from(chunk)))
// [[1, 2, 3], [4, 5, 6], [7]]

// Chunk size larger than iterable
const small = [1, 2]
const chunks3 = Iterable.chunksOf(small, 5)
console.log(Array.from(chunks3).map((chunk) => Array.from(chunk)))
// [[1, 2]]

// Process data in batches
const data = Iterable.range(1, 100)
const batches = Iterable.chunksOf(data, 10)
const batchSums = Iterable.map(
  batches,
  (batch) => Iterable.reduce(batch, 0, (sum, n) => sum + n)
)
console.log(Array.from(Iterable.take(batchSums, 3))) // [55, 155, 255]
```

**Signature**

```ts
declare const chunksOf: { (n: number): <A>(self: Iterable<A>) => Iterable<Array<A>>; <A>(self: Iterable<A>, n: number): Iterable<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1064)

Since v2.0.0