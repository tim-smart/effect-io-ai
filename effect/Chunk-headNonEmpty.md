# headNonEmpty

Returns the first element of this non empty chunk.

To import and use `headNonEmpty` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.headNonEmpty
undefined

**Signature**

```ts
export declare const headNonEmpty: <A>(self: NonEmptyChunk<A>) => A
```
