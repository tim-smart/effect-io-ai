# findFirstIndex

Return the first index for which a predicate holds.

To import and use `findFirstIndex` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.findFirstIndex
```

**Signature**

```ts
export declare const findFirstIndex: {
  <A>(predicate: Predicate<A>): (self: Chunk<A>) => Option<number>
  <A>(self: Chunk<A>, predicate: Predicate<A>): Option<number>
}
```
