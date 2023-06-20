# prepend

Prepends the value to the chunk

To import and use `prepend` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.prepend
```

**Signature**

```ts
export declare const prepend: {
  <B>(elem: B): <A>(self: Chunk<A>) => Chunk<B | A>
  <A, B>(self: Chunk<A>, elem: B): Chunk<A | B>
}
```
