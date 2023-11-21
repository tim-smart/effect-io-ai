# dropWhile

Drops all elements so long as the predicate returns true.

To import and use `dropWhile` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.dropWhile
```

**Signature**

```ts
export declare const dropWhile: {
  <B extends A, A = B>(predicate: Predicate<A>): (self: Chunk<B>) => Chunk<B>
  <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>
}
```
