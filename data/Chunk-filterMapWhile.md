# filterMapWhile

Transforms all elements of the chunk for as long as the specified function returns some value

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const filterMapWhile: {
  <A, B>(f: (a: A) => Option<B>): (self: Iterable<A>) => Chunk<B>
  <A, B>(self: Iterable<A>, f: (a: A) => Option<B>): Chunk<B>
}
```
