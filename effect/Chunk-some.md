# some

Check if a predicate holds true for some `Chunk` element.

To import and use `some` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.some
```

**Signature**

```ts
export declare const some: {
  <A>(predicate: Predicate<A>): <B extends A>(self: Chunk<B>) => self is NonEmptyChunk<B>
  <B extends A, A = B>(self: Chunk<B>, predicate: Predicate<A>): self is NonEmptyChunk<B>
}
```
