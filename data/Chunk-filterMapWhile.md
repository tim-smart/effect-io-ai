# filterMapWhile

Transforms all elements of the chunk for as long as the specified function returns some value

To import and use `filterMapWhile` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.filterMapWhile
```

**Signature**

```ts
export declare const filterMapWhile: {
  <A, B>(f: (a: A) => Option<B>): (self: Iterable<A>) => Chunk<B>
  <A, B>(self: Iterable<A>, f: (a: A) => Option<B>): Chunk<B>
}
```
