# drop

Drops the first up to `n` elements from the chunk

To import and use `drop` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.drop
undefined

**Signature**

```ts
export declare const drop: { (n: number): <A>(self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, n: number): Chunk<A> }
```
