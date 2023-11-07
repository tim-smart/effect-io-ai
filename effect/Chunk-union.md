# union

Creates a Chunks of unique values, in order, from all given Chunks.

To import and use `union` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.union
```

**Signature**

```ts
export declare const union: {
  <A>(that: Chunk<A>): <B>(self: Chunk<B>) => Chunk<A | B>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>
}
```
