# reduceRight

Folds over the elements in this chunk from the right.

To import and use `reduceRight` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.reduceRight
```

**Signature**

```ts
export declare const reduceRight: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Chunk<A>) => B
  <A, B>(self: Chunk<A>, b: B, f: (b: B, a: A) => B): B
}
```
