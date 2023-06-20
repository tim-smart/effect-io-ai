# sort

Sort the elements of a Chunk in increasing order, creating a new Chunk.

To import and use `sort` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.sort
```

**Signature**

```ts
export declare const sort: {
  <B>(O: Order<B>): <A extends B>(self: Chunk<A>) => Chunk<A>
  <A extends B, B>(self: Chunk<A>, O: Order<B>): Chunk<A>
}
```
