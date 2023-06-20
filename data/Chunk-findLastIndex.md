# findLastIndex

Find the first index for which a predicate holds

To import and use `findLastIndex` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.findLastIndex
```

**Signature**

```ts
export declare const findLastIndex: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => Option<number>
  <A>(self: Chunk<A>, f: Predicate<A>): Option<number>
}
```
