# takeWhile

Takes all elements so long as the predicate returns true.

To import and use `takeWhile` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.takeWhile
undefined

**Signature**

```ts
export declare const takeWhile: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Chunk<B>
  <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Chunk<A>
  <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Chunk<B>
  <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>
}
```
