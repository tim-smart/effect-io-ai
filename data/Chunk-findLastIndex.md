# findLastIndex

Find the first index for which a predicate holds

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const findLastIndex: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => Option<number>
  <A>(self: Chunk<A>, f: Predicate<A>): Option<number>
}
```
