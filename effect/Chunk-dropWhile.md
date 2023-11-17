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
  <A>(f: (a: A) => boolean): (self: Chunk<A>) => Chunk<A>
  <A>(self: Chunk<A>, f: (a: A) => boolean): Chunk<A>
}
```
