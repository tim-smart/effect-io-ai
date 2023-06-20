# reduceRightWithIndex

Folds over the elements in this chunk from the right.

To import and use `reduceRightWithIndex` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.reduceRightWithIndex
```

**Signature**

```ts
export declare const reduceRightWithIndex: {
  <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Chunk<A>) => B
  <A, B>(self: Chunk<A>, b: B, f: (b: B, a: A, i: number) => B): B
}
```
