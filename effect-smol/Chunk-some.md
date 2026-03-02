Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.some

Check if a predicate holds true for some `Chunk` element.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
console.log(Chunk.some(chunk, (n) => n > 4)) // true
console.log(Chunk.some(chunk, (n) => n > 10)) // false

// Empty chunk returns false
const empty = Chunk.empty<number>()
console.log(Chunk.some(empty, (n) => n > 0)) // false

// Check for specific value
const words = Chunk.make("apple", "banana", "cherry")
console.log(Chunk.some(words, (word) => word.includes("ban"))) // true
```

**Signature**

```ts
declare const some: { <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => self is NonEmptyChunk<A>; <A>(self: Chunk<A>, predicate: Predicate<A>): self is NonEmptyChunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2692)

Since v2.0.0