# zipWithIndexOffset

Zips this chunk with the index of every element, starting from the initial
index value.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const zipWithIndexOffset: {
  (offset: number): <A>(self: Chunk<A>) => Chunk<[A, number]>
  <A>(self: Chunk<A>, offset: number): Chunk<[A, number]>
}
```
