Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.takeWhile

Takes all elements so long as the predicate returns true.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 3, 2, 1)
const result = Chunk.takeWhile(chunk, (n) => n < 4)
console.log(Chunk.toArray(result)) // [1, 2, 3]

// Empty if first element doesn't match
const none = Chunk.takeWhile(chunk, (n) => n > 5)
console.log(Chunk.toArray(none)) // []

// Takes all if all match
const small = Chunk.make(1, 2, 3)
const all = Chunk.takeWhile(small, (n) => n < 10)
console.log(Chunk.toArray(all)) // [1, 2, 3]
```

**Signature**

```ts
declare const takeWhile: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Chunk<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Chunk<A>; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Chunk<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2117)

Since v2.0.0