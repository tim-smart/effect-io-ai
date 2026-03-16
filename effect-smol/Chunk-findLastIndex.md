Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.findLastIndex

Return the last index for which a predicate holds.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const result = Chunk.findLastIndex(chunk, (n) => n < 4)
console.log(result) // Option.some(2)

// No match found
const notFound = Chunk.findLastIndex(chunk, (n) => n > 10)
console.log(notFound) // Option.none()

// Find last even number index
const lastEven = Chunk.findLastIndex(chunk, (n) => n % 2 === 0)
console.log(lastEven) // Option.some(3)
```

**Signature**

```ts
declare const findLastIndex: { <A>(predicate: Predicate<A>): (self: Chunk<A>) => O.Option<number>; <A>(self: Chunk<A>, predicate: Predicate<A>): O.Option<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2629)

Since v2.0.0