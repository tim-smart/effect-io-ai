# splitNonEmptyAt

Splits a `NonEmptyChunk` into two segments, with the first segment containing a maximum of `n` elements.
The value of `n` must be `>= 1`.

To import and use `splitNonEmptyAt` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.splitNonEmptyAt
undefined

**Signature**

```ts
export declare const splitNonEmptyAt: {
  (n: number): <A>(self: NonEmptyChunk<A>) => [beforeIndex: NonEmptyChunk<A>, fromIndex: Chunk<A>]
  <A>(self: NonEmptyChunk<A>, n: number): [beforeIndex: NonEmptyChunk<A>, fromIndex: Chunk<A>]
}
```
