# splitAt

Returns two splits of this chunk at the specified index.

To import and use `splitAt` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.splitAt
undefined

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: Chunk<A>) => [beforeIndex: Chunk<A>, fromIndex: Chunk<A>]
  <A>(self: Chunk<A>, n: number): [beforeIndex: Chunk<A>, fromIndex: Chunk<A>]
}
```
