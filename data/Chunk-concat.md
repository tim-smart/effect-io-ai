# concat

Concatenates the two chunks

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const concat: {
  <B>(that: Chunk<B>): <A>(self: Chunk<A>) => Chunk<B | A>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>
}
```
