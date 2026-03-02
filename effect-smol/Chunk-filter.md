Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.filter

Returns a filtered subset of the elements.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5, 6)
const evenNumbers = Chunk.filter(chunk, (n) => n % 2 === 0)
console.log(Chunk.toArray(evenNumbers)) // [2, 4, 6]

// With refinement
const mixed = Chunk.make("hello", 42, "world", 100)
const numbers = Chunk.filter(mixed, (x): x is number => typeof x === "number")
console.log(Chunk.toArray(numbers)) // [42, 100]
```

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Chunk<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Chunk<A>; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Chunk<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1061)

Since v2.0.0