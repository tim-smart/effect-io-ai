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
  <B extends A, A = B>(predicate: Predicate<A>): (self: Chunk<B>) => Option<B>
  <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Option<B>
  <A>(self: Chunk<A>, predicate: Predicate<A>): Option<A>
}
```
