# filterMapWithIndex

Returns a filtered and mapped subset of the elements.

To import and use `filterMapWithIndex` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.filterMapWithIndex
```

**Signature**

```ts
export declare const filterMapWithIndex: {
  <A, B>(f: (a: A, i: number) => Option<B>): (self: Iterable<A>) => Chunk<B>
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Chunk<B>
}
```
