# intersection

Creates a Chunk of unique values that are included in all given Chunks.

The order and references of result values are determined by the Chunk.

To import and use `intersection` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.intersection
```

**Signature**

```ts
export declare const intersection: {
  <A>(that: Chunk<A>): <B>(self: Chunk<B>) => Chunk<A & B>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A & B>
}
```
