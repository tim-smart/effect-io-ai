# flatten

Flattens a chunk of chunks into a single chunk by concatenating all chunks.

To import and use `flatten` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.flatten
undefined

**Signature**

```ts
export declare const flatten: <S extends Chunk<Chunk<any>>>(self: S) => Chunk.Flatten<S>
```
