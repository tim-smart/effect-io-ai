# partition

Separate elements based on a predicate.

To import and use `partition` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.partition
```

**Signature**

```ts
export declare const partition: {
  <C extends A, B extends A, A = C>(refinement: Refinement<A, B>): (self: Chunk<C>) => readonly [Chunk<C>, Chunk<B>]
  <B extends A, A = B>(predicate: Predicate<A>): (self: Chunk<B>) => readonly [Chunk<B>, Chunk<B>]
  <C extends A, B extends A, A = C>(self: Chunk<C>, refinement: Refinement<A, B>): readonly [Chunk<C>, Chunk<B>]
  <B extends A, A = B>(self: Chunk<B>, predicate: Predicate<A>): readonly [Chunk<B>, Chunk<B>]
}
```