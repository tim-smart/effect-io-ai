# reduce

Folds over the elements in this chunk from the left.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const reduce: {
  <A, B>(b: B, f: (s: B, a: A) => B): (self: Chunk<A>) => B
  <A, B>(self: Chunk<A>, b: B, f: (s: B, a: A) => B): B
}
```
