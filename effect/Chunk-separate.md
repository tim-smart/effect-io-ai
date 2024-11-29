# separate

Partitions the elements of this chunk into two chunks.

To import and use `separate` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.separate
undefined

**Signature**

```ts
export declare const separate: <A, B>(self: Chunk<Either<B, A>>) => [Chunk<A>, Chunk<B>]
```
