# appendAll

Concatenates the two chunks

To import and use `appendAll` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.appendAll
```

**Signature**

```ts
export declare const appendAll: {
  <B>(that: Chunk<B>): <A>(self: Chunk<A>) => Chunk<B | A>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>
}
```
