# tail

Returns every elements after the first.

To import and use `tail` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.tail
undefined

**Signature**

```ts
export declare const tail: <A>(self: Chunk<A>) => Option<Chunk<A>>
```
