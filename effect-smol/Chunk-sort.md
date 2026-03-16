Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.sort

Sort the elements of a Chunk in increasing order, creating a new Chunk.

**Example**

```ts
import { Chunk } from "effect"
import * as Order from "effect/Order"

const numbers = Chunk.make(3, 1, 4, 1, 5, 9, 2, 6)
const sorted = Chunk.sort(numbers, Order.Number)
console.log(Chunk.toArray(sorted)) // [1, 1, 2, 3, 4, 5, 6, 9]

// Reverse order
const reverseSorted = Chunk.sort(numbers, Order.flip(Order.Number))
console.log(Chunk.toArray(reverseSorted)) // [9, 6, 5, 4, 3, 2, 1, 1]

// String sorting
const words = Chunk.make("banana", "apple", "cherry")
const sortedWords = Chunk.sort(words, Order.String)
console.log(Chunk.toArray(sortedWords)) // ["apple", "banana", "cherry"]
```

**Signature**

```ts
declare const sort: { <B>(O: Order.Order<B>): <A extends B>(self: Chunk<A>) => Chunk<A>; <A extends B, B>(self: Chunk<A>, O: Order.Order<B>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1829)

Since v2.0.0