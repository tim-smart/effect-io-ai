# zipAll

Zips this chunk pointwise with the specified chunk to produce a new chunk with
pairs of elements from each chunk, filling in missing values from the
shorter chunk with `None`. The returned chunk will have the length of the
longer chunk.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const zipAll: {
  <B>(that: Chunk<B>): <A>(self: Chunk<A>) => Chunk<readonly [Option<A>, Option<B>]>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<readonly [Option<A>, Option<B>]>
}
```
