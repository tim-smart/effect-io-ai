# splitWhere

Splits this chunk on the first element that matches this predicate.

To import and use `splitWhere` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.splitWhere
```

**Signature**

```ts
export declare const splitWhere: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => readonly [Chunk<A>, Chunk<A>]
  <A>(self: Chunk<A>, f: Predicate<A>): readonly [Chunk<A>, Chunk<A>]
}
```
