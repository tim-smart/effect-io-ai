# takeWhile

Takes all elements so long as the predicate returns true.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const takeWhile: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => Chunk<A>
  <A>(self: Chunk<A>, f: Predicate<A>): Chunk<A>
}
```
