# findLast

Find the last element for which a predicate holds.

To import and use `findLast` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.findLast
```

**Signature**

```ts
export declare const findLast: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Chunk<A>) => Option<B>
  <A>(predicate: Predicate<A>): <B extends A>(self: Chunk<B>) => Option<B>
  <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Option<B>
  <B extends A, A>(self: Chunk<B>, predicate: Predicate<A>): Option<B>
}
```
