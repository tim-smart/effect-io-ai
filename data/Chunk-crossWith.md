# crossWith

Zips this chunk crosswise with the specified chunk using the specified combiner.

To import and use `crossWith` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.crossWith
```

**Signature**

```ts
export declare const crossWith: {
  <A, B, C>(that: Chunk<B>, f: (a: A, b: B) => C): (self: Chunk<A>) => Chunk<C>
  <A, B, C>(self: Chunk<A>, that: Chunk<B>, f: (a: A, b: B) => C): Chunk<C>
}
```
