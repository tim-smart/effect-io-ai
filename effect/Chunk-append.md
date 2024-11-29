# append

Appends the specified element to the end of the `Chunk`.

To import and use `append` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.append
undefined

**Signature**

```ts
export declare const append: {
  <A2>(a: A2): <A>(self: Chunk<A>) => NonEmptyChunk<A2 | A>
  <A, A2>(self: Chunk<A>, a: A2): NonEmptyChunk<A | A2>
}
```
