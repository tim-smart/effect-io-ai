# zipAllWith

Zips with chunk with the specified chunk to produce a new chunk with
pairs of elements from each chunk combined using the specified function
`both`. If one chunk is shorter than the other uses the specified
function `left` or `right` to map the element that does exist to the
result type.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const zipAllWith: {
  <A, B, C, D, E>(that: Chunk<B>, f: (a: A, b: B) => C, left: (a: A) => D, right: (b: B) => E): (
    self: Chunk<A>
  ) => Chunk<C | D | E>
  <A, B, C, D, E>(self: Chunk<A>, that: Chunk<B>, f: (a: A, b: B) => C, left: (a: A) => D, right: (b: B) => E): Chunk<
    C | D | E
  >
}
```
