Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.findLast

Find the last element for which a predicate holds.

**Example**

```ts
import { Chunk } from "effect"
import * as Option from "effect/Option"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const result = Chunk.findLast(chunk, (n) => n < 4)
console.log(Option.isSome(result)) // true
console.log(Option.getOrElse(result, () => 0)) // 3

// No match found
const notFound = Chunk.findLast(chunk, (n) => n > 10)
console.log(Option.isNone(notFound)) // true

// Find last even number
const lastEven = Chunk.findLast(chunk, (n) => n % 2 === 0)
console.log(Option.getOrElse(lastEven, () => 0)) // 4
```

**Signature**

```ts
declare const findLast: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Option<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Option<A>; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Option<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2597)

Since v2.0.0