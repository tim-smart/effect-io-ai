# splitWhere

Splits this chunk on the first element that matches this predicate.
Returns a tuple containing two chunks: the first one is before the match, and the second one is from the match onward.

To import and use `splitWhere` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.splitWhere
```

**Signature**

```ts
export declare const splitWhere: {
  <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => [beforeMatch: Chunk<A>, fromMatch: Chunk<A>]
  <A>(self: Chunk<A>, predicate: Predicate<A>): [beforeMatch: Chunk<A>, fromMatch: Chunk<A>]
}
```
