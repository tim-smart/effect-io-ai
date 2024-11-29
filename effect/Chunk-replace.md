# replace

Change the element at the specified index, creating a new `Chunk`,
or returning the input if the index is out of bounds.

To import and use `replace` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.replace
undefined

**Signature**

```ts
export declare const replace: {
  <B>(i: number, b: B): <A>(self: Chunk<A>) => Chunk<B | A>
  <A, B>(self: Chunk<A>, i: number, b: B): Chunk<B | A>
}
```
