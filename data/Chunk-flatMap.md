# flatMap

Returns a chunk with the elements mapped by the specified function.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const flatMap: {
  <A, B>(f: (a: A) => Chunk<B>): (self: Chunk<A>) => Chunk<B>
  <A, B>(self: Chunk<A>, f: (a: A) => Chunk<B>): Chunk<B>
}
```
