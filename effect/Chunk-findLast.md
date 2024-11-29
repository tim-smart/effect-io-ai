# findLast

Find the last element for which a predicate holds.

To import and use `findLast` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.findLast
undefined

**Signature**

```ts
export declare const findLast: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Option<B>
  <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Option<A>
  <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Option<B>
  <A>(self: Chunk<A>, predicate: Predicate<A>): Option<A>
}
```
