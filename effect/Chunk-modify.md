# modify

Apply a function to the element at the specified index, creating a new `Chunk`,
or returning the input if the index is out of bounds.

To import and use `modify` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.modify
undefined

**Signature**

```ts
export declare const modify: {
  <A, B>(i: number, f: (a: A) => B): (self: Chunk<A>) => Chunk<A | B>
  <A, B>(self: Chunk<A>, i: number, f: (a: A) => B): Chunk<A | B>
}
```
