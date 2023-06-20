# mapWithIndex

Returns an effect whose success is mapped by the specified f function.

To import and use `mapWithIndex` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.mapWithIndex
```

**Signature**

```ts
export declare const mapWithIndex: {
  <A, B>(f: (a: A, i: number) => B): (self: Chunk<A>) => Chunk<B>
  <A, B>(self: Chunk<A>, f: (a: A, i: number) => B): Chunk<B>
}
```
