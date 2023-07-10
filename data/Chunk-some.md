# some

Check if a predicate holds true for some `Chunk` element.

To import and use `some` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.some
```

**Signature**

```ts
export declare const some: {
  <A>(predicate: Predicate<A>): (self: Chunk<A>) => self is NonEmptyChunk<A>
  <A>(self: Chunk<A>, predicate: Predicate<A>): self is NonEmptyChunk<A>
}
```
