# filter

Returns a filtered and mapped subset of the elements.

To import and use `filter` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.filter
```

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Chunk<A>) => Chunk<B>
  <B extends A, A = B>(predicate: Predicate<A>): (self: Chunk<B>) => Chunk<B>
  <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Chunk<B>
  <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>
}
```
