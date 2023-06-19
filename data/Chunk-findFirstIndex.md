# findFirstIndex

Find the first index for which a predicate holds

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const findFirstIndex: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => Option<number>
  <A>(self: Chunk<A>, f: Predicate<A>): Option<number>
}
```
