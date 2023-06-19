# append

Appends the value to the chunk

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const append: {
  <A2>(a: A2): <A>(self: Chunk<A>) => Chunk<A2 | A>
  <A, A2>(self: Chunk<A>, a: A2): Chunk<A | A2>
}
```
