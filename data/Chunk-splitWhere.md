# splitWhere

Splits this chunk on the first element that matches this predicate.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const splitWhere: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => readonly [Chunk<A>, Chunk<A>]
  <A>(self: Chunk<A>, f: Predicate<A>): readonly [Chunk<A>, Chunk<A>]
}
```
