# filterMap

Returns a filtered and mapped subset of the elements.

To import and use `filterMap` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.filterMap
```

**Signature**

```ts
export declare const filterMap: {
  <A, B>(f: (a: A) => Option<B>): (self: Iterable<A>) => Chunk<B>
  <A, B>(self: Iterable<A>, f: (a: A) => Option<B>): Chunk<B>
}
```
