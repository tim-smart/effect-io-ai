# filterMapWithIndex

Returns a filtered and mapped subset of the elements.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const filterMapWithIndex: {
  <A, B>(f: (a: A, i: number) => Option<B>): (self: Iterable<A>) => Chunk<B>
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Chunk<B>
}
```
