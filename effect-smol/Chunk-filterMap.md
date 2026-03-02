Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.filterMap

Returns a filtered and mapped subset of the elements.

**Example**

```ts
import { Chunk } from "effect"
import * as Result from "effect/Result"

const chunk = Chunk.make("1", "2", "hello", "3", "world")
const numbers = Chunk.filterMap(chunk, (str) => {
  const num = parseInt(str)
  return isNaN(num) ? Result.failVoid : Result.succeed(num)
})
console.log(Chunk.toArray(numbers)) // [1, 2, 3]

// With index parameter
const evenIndexNumbers = Chunk.filterMap(chunk, (str, i) => {
  const num = parseInt(str)
  return isNaN(num) || i % 2 !== 0 ? Result.failVoid : Result.succeed(num)
})
console.log(Chunk.toArray(evenIndexNumbers)) // [1]
```

**Signature**

```ts
declare const filterMap: { <A, B, X>(f: (input: A, i: number) => Result<B, X>): (self: Chunk<A>) => Chunk<B>; <A, B, X>(self: Chunk<A>, f: (input: A, i: number) => Result<B, X>): Chunk<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1023)

Since v2.0.0