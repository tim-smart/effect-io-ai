# flatMap

Returns a chunk with the elements mapped by the specified function.

To import and use `flatMap` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, B>(f: (a: A) => Chunk<B>): (self: Chunk<A>) => Chunk<B>
  <A, B>(self: Chunk<A>, f: (a: A) => Chunk<B>): Chunk<B>
}
```
