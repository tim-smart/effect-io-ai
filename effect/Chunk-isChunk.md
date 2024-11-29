# isChunk

Checks if `u` is a `Chunk<unknown>`

To import and use `isChunk` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.isChunk
undefined

**Signature**

```ts
export declare const isChunk: { <A>(u: Iterable<A>): u is Chunk<A>; (u: unknown): u is Chunk<unknown> }
```
