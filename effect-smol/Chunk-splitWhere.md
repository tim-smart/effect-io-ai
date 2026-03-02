Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.splitWhere

Splits this chunk on the first element that matches this predicate.
Returns a tuple containing two chunks: the first one is before the match, and the second one is from the match onward.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5, 6)
const [before, fromMatch] = Chunk.splitWhere(chunk, (n) => n > 3)
console.log(Chunk.toArray(before)) // [1, 2, 3]
console.log(Chunk.toArray(fromMatch)) // [4, 5, 6]

// No match found
const [all, empty] = Chunk.splitWhere(chunk, (n) => n > 10)
console.log(Chunk.toArray(all)) // [1, 2, 3, 4, 5, 6]
console.log(Chunk.toArray(empty)) // []

// Match on first element
const [emptyBefore, allFromFirst] = Chunk.splitWhere(chunk, (n) => n === 1)
console.log(Chunk.toArray(emptyBefore)) // []
console.log(Chunk.toArray(allFromFirst)) // [1, 2, 3, 4, 5, 6]
```

**Signature**

```ts
declare const splitWhere: { <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => [beforeMatch: Chunk<A>, fromMatch: Chunk<A>]; <A>(self: Chunk<A>, predicate: Predicate<A>): [beforeMatch: Chunk<A>, fromMatch: Chunk<A>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2004)

Since v2.0.0