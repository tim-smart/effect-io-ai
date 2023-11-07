# splitWhere

Splits this chunk on the first element that matches this predicate.

To import and use `splitWhere` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.splitWhere
```

**Signature**

```ts
export declare const splitWhere: {
  <A>(predicate: Predicate<A>): (self: Chunk<A>) => [Chunk<A>, Chunk<A>]
  <A>(self: Chunk<A>, predicate: Predicate<A>): [Chunk<A>, Chunk<A>]
}
```
