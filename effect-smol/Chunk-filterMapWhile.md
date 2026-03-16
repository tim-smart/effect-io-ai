Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.filterMapWhile

Transforms all elements of the chunk for as long as the specified function succeeds.

**Example**

```ts
import { Chunk } from "effect"
import * as Result from "effect/Result"

const chunk = Chunk.make("1", "2", "hello", "3", "4")
const result = Chunk.filterMapWhile(chunk, (s) => {
  const num = parseInt(s)
  return isNaN(num) ? Result.failVoid : Result.succeed(num)
})
console.log(Chunk.toArray(result)) // [1, 2]
// Stops at "hello" and doesn't process "3", "4"

// Compare with regular filterMap
const allNumbers = Chunk.filterMap(chunk, (s) => {
  const num = parseInt(s)
  return isNaN(num) ? Result.failVoid : Result.succeed(num)
})
console.log(Chunk.toArray(allNumbers)) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const filterMapWhile: { <A, B, X>(f: Filter.Filter<A, B, X>): (self: Chunk<A>) => Chunk<B>; <A, B, X>(self: Chunk<A>, f: Filter.Filter<A, B, X>): Chunk<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1097)

Since v2.0.0