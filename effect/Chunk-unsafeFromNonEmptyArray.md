# unsafeFromNonEmptyArray

Wraps an array into a chunk without copying, unsafe on mutable arrays

To import and use `unsafeFromNonEmptyArray` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.unsafeFromNonEmptyArray
undefined

**Signature**

```ts
export declare const unsafeFromNonEmptyArray: <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyChunk<A>
```
