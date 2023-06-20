# chunksOf

Groups elements in chunks of up to `n` elements.

To import and use `chunksOf` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.chunksOf
```

**Signature**

```ts
export declare const chunksOf: {
  (n: number): <A>(self: Chunk<A>) => Chunk<Chunk<A>>
  <A>(self: Chunk<A>, n: number): Chunk<Chunk<A>>
}
```
