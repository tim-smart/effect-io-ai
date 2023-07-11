# prepend

Prepend an element to the front of a `Chunk`, creating a new `NonEmptyChunk`.

To import and use `prepend` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.prepend
```

**Signature**

```ts
export declare const prepend: {
  <B>(elem: B): <A>(self: Chunk<A>) => NonEmptyChunk<B | A>
  <A, B>(self: Chunk<A>, elem: B): NonEmptyChunk<A | B>
}
```
