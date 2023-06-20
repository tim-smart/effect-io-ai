# separate

Partitions the elements of this chunk into two chunks.

To import and use `separate` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.separate
```

**Signature**

```ts
export declare const separate: <A, B>(self: Chunk<Either<A, B>>) => readonly [Chunk<A>, Chunk<B>]
```
