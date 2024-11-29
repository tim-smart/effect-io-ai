# tailNonEmpty

Returns every elements after the first.

To import and use `tailNonEmpty` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.tailNonEmpty
undefined

**Signature**

```ts
export declare const tailNonEmpty: <A>(self: NonEmptyChunk<A>) => Chunk<A>
```
