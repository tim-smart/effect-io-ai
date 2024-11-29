# unsafeFromArray

Wraps an array into a chunk without copying, unsafe on mutable arrays

To import and use `unsafeFromArray` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.unsafeFromArray
undefined

**Signature**

```ts
export declare const unsafeFromArray: <A>(self: ReadonlyArray<A>) => Chunk<A>
```
