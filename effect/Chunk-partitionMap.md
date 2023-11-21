# partitionMap

Partitions the elements of this chunk into two chunks using f.

To import and use `partitionMap` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.partitionMap
```

**Signature**

```ts
export declare const partitionMap: {
  <A, B, C>(f: (a: A) => Either<B, C>): (self: Chunk<A>) => [left: Chunk<B>, right: Chunk<C>]
  <A, B, C>(self: Chunk<A>, f: (a: A) => Either<B, C>): [left: Chunk<B>, right: Chunk<C>]
}
```
