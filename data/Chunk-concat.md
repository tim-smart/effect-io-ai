# concat

Concatenates the two chunks

To import and use `concat` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.concat
```

**Signature**

```ts
export declare const concat: {
  <B>(that: Chunk<B>): <A>(self: Chunk<A>) => Chunk<B | A>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>
}
```
