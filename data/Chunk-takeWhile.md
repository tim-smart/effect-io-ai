# takeWhile

Takes all elements so long as the predicate returns true.

To import and use `takeWhile` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.takeWhile
```

**Signature**

```ts
export declare const takeWhile: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => Chunk<A>
  <A>(self: Chunk<A>, f: Predicate<A>): Chunk<A>
}
```
