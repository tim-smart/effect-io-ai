Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Example**

```ts
import { Chunk, Option } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const result = Chunk.findFirst(chunk, (n) => n > 3)
console.log(Option.isSome(result)) // true
console.log(Option.getOrElse(result, () => 0)) // 4

// No match found
const notFound = Chunk.findFirst(chunk, (n) => n > 10)
console.log(Option.isNone(notFound)) // true

// With type refinement
const mixed = Chunk.make(1, "hello", 2, "world", 3)
const firstString = Chunk.findFirst(
  mixed,
  (x): x is string => typeof x === "string"
)
console.log(Option.getOrElse(firstString, () => "")) // "hello"
```

**Signature**

```ts
declare const findFirst: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Option<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Option<A>; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Option<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2537)

Since v2.0.0