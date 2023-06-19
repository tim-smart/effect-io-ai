# map

Returns an effect whose success is mapped by the specified f function.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): (self: Chunk<A>) => Chunk<B>
  <A, B>(self: Chunk<A>, f: (a: A) => B): Chunk<B>
}
```
