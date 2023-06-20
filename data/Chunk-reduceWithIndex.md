# reduceWithIndex

Folds over the elements in this chunk from the left.

To import and use `reduceWithIndex` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.reduceWithIndex
```

**Signature**

```ts
export declare const reduceWithIndex: {
  <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Chunk<A>) => B
  <A, B>(self: Chunk<A>, b: B, f: (b: B, a: A, i: number) => B): B
}
```
