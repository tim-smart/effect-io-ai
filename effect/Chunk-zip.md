# zip

Zips this chunk pointwise with the specified chunk.

To import and use `zip` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.zip
undefined

**Signature**

```ts
export declare const zip: {
  <B>(that: Chunk<B>): <A>(self: Chunk<A>) => Chunk<[A, B]>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<[A, B]>
}
```
