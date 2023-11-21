# partition

Separate elements based on a predicate that also exposes the index of the element.

To import and use `partition` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.partition
```

**Signature**

```ts
export declare const partition: {
  <C extends A, B extends A, A = C>(
    refinement: (a: A, i: number) => a is B
  ): (self: Chunk<C>) => [excluded: Chunk<Exclude<C, B>>, satisfying: Chunk<B>]
  <B extends A, A = B>(
    predicate: (a: A, i: number) => boolean
  ): (self: Chunk<B>) => [excluded: Chunk<B>, satisfying: Chunk<B>]
  <A, B extends A>(
    self: Chunk<A>,
    refinement: (a: A, i: number) => a is B
  ): [excluded: Chunk<Exclude<A, B>>, satisfying: Chunk<B>]
  <A>(self: Chunk<A>, predicate: (a: A, i: number) => boolean): [excluded: Chunk<A>, satisfying: Chunk<A>]
}
```
