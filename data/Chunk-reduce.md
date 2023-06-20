# reduce

Folds over the elements in this chunk from the left.

To import and use `reduce` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.reduce
```

**Signature**

```ts
export declare const reduce: {
  <A, B>(b: B, f: (s: B, a: A) => B): (self: Chunk<A>) => B
  <A, B>(self: Chunk<A>, b: B, f: (s: B, a: A) => B): B
}
```
