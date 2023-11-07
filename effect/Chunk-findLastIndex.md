# findLastIndex

Return the last index for which a predicate holds.

To import and use `findLastIndex` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.findLastIndex
```

**Signature**

```ts
export declare const findLastIndex: {
  <A>(predicate: Predicate<A>): (self: Chunk<A>) => Option<number>
  <A>(self: Chunk<A>, predicate: Predicate<A>): Option<number>
}
```
