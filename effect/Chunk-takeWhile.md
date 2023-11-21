# takeWhile

Takes all elements so long as the predicate returns true.

To import and use `takeWhile` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.takeWhile
```

**Signature**

```ts
export declare const takeWhile: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Chunk<A>) => Chunk<B>
  <B extends A, A = B>(predicate: Predicate<A>): (self: Chunk<B>) => Chunk<B>
  <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Chunk<B>
  <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>
}
```
