# zipWithIndexOffset

Zips this chunk with the index of every element, starting from the initial
index value.

To import and use `zipWithIndexOffset` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.zipWithIndexOffset
```

**Signature**

```ts
export declare const zipWithIndexOffset: {
  (offset: number): <A>(self: Chunk<A>) => Chunk<[A, number]>
  <A>(self: Chunk<A>, offset: number): Chunk<[A, number]>
}
```
