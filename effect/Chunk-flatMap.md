# flatMap

Applies a function to each element in a chunk and returns a new chunk containing the concatenated mapped elements.

To import and use `flatMap` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <S extends Chunk<any>, T extends Chunk<any>>(
    f: (a: Chunk.Infer<S>, i: number) => T
  ): (self: S) => Chunk.With2<S, T, Chunk.Infer<T>>
  <A, B>(self: NonEmptyChunk<A>, f: (a: A, i: number) => NonEmptyChunk<B>): NonEmptyChunk<B>
  <A, B>(self: Chunk<A>, f: (a: A, i: number) => Chunk<B>): Chunk<B>
}
```
