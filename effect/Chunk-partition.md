# partition

Separate elements based on a predicate that also exposes the index of the element.

To import and use `partition` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.partition
```

**Signature**

```ts
export declare const partition: {
  <C extends A, B extends A, A = C>(refinement: Refinement<A, B>): (self: Chunk<C>) => [Chunk<Exclude<C, B>>, Chunk<B>]
  <B extends A, A = B>(predicate: (a: A) => boolean): (self: Chunk<B>) => [Chunk<B>, Chunk<B>]
  <C extends A, B extends A, A = C>(self: Chunk<C>, refinement: Refinement<A, B>): [Chunk<Exclude<C, B>>, Chunk<B>]
  <B extends A, A = B>(self: Chunk<B>, predicate: (a: A) => boolean): [Chunk<B>, Chunk<B>]
}
```
