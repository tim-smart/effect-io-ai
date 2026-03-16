Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.findFirstIndex

Return the first index for which a predicate holds.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const result = Chunk.findFirstIndex(chunk, (n) => n > 3)
console.log(result) // Option.some(3)

// No match found
const notFound = Chunk.findFirstIndex(chunk, (n) => n > 10)
console.log(notFound) // Option.none()

// Find first even number
const firstEven = Chunk.findFirstIndex(chunk, (n) => n % 2 === 0)
console.log(firstEven) // Option.some(1)
```

**Signature**

```ts
declare const findFirstIndex: { <A>(predicate: Predicate<A>): (self: Chunk<A>) => O.Option<number>; <A>(self: Chunk<A>, predicate: Predicate<A>): O.Option<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2566)

Since v2.0.0