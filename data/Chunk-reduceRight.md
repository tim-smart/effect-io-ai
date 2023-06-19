# reduceRight

Folds over the elements in this chunk from the right.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const reduceRight: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Chunk<A>) => B
  <A, B>(self: Chunk<A>, b: B, f: (b: B, a: A) => B): B
}
```
