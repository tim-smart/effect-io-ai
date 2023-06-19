# sort

Sort the elements of a Chunk in increasing order, creating a new Chunk.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const sort: {
  <B>(O: Order<B>): <A extends B>(self: Chunk<A>) => Chunk<A>
  <A extends B, B>(self: Chunk<A>, O: Order<B>): Chunk<A>
}
```
