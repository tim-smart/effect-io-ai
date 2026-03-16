Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.every

Check if a predicate holds true for every `Chunk` element.

**Example**

```ts
import { Chunk } from "effect"

const allPositive = Chunk.make(1, 2, 3, 4, 5)
console.log(Chunk.every(allPositive, (n) => n > 0)) // true
console.log(Chunk.every(allPositive, (n) => n > 3)) // false

// Empty chunk returns true
const empty = Chunk.empty<number>()
console.log(Chunk.every(empty, (n) => n > 0)) // true

// Type refinement
const mixed = Chunk.make(1, 2, 3)
if (Chunk.every(mixed, (x): x is number => typeof x === "number")) {
  // mixed is now typed as Chunk<number>
  console.log("All elements are numbers")
}
```

**Signature**

```ts
declare const every: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => self is Chunk<B>; <A>(predicate: Predicate<A>): (self: Chunk<A>) => boolean; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): self is Chunk<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2663)

Since v2.0.0