# append

Appends the specified element to the end of the `Chunk`.

To import and use `append` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.append
```

**Signature**

```ts
export declare const append: {
  <A2>(a: A2): <A>(self: Chunk<A>) => Chunk<A2 | A>
  <A, A2>(self: Chunk<A>, a: A2): Chunk<A | A2>
}
```
