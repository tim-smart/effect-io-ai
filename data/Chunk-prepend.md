# prepend

Prepends the value to the chunk

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const prepend: {
  <B>(elem: B): <A>(self: Chunk<A>) => Chunk<B | A>
  <A, B>(self: Chunk<A>, elem: B): Chunk<A | B>
}
```
