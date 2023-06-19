# partitionWithIndex

Separate elements based on a predicate that also exposes the index of the element.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const partitionWithIndex: {
  <C extends A, B extends A, A = C>(refinement: (a: A, i: number) => a is B): (
    self: Chunk<C>
  ) => readonly [Chunk<C>, Chunk<B>]
  <B extends A, A = B>(predicate: (a: A, i: number) => boolean): (self: Chunk<B>) => readonly [Chunk<B>, Chunk<B>]
  <C extends A, B extends A, A = C>(self: Chunk<C>, refinement: (a: A, i: number) => a is B): readonly [
    Chunk<C>,
    Chunk<B>
  ]
  <B extends A, A = B>(self: Chunk<B>, predicate: (a: A, i: number) => boolean): readonly [Chunk<B>, Chunk<B>]
}
```
