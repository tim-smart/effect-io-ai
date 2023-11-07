# filter

Returns a filtered and mapped subset of the elements.

To import and use `filter` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.filter
```

**Signature**

```ts
export declare const filter: {
  <C extends A, B extends A, A = C>(refinement: Refinement<A, B>): (self: Chunk<C>) => Chunk<B>
  <B extends A, A = B>(predicate: Predicate<A>): (self: Chunk<B>) => Chunk<B>
  <C extends A, B extends A, A = C>(self: Chunk<C>, refinement: Refinement<A, B>): Chunk<B>
  <B extends A, A = B>(self: Chunk<B>, predicate: Predicate<A>): Chunk<B>
}
```
