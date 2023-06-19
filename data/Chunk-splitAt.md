# splitAt

Returns two splits of this chunk at the specified index.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: Chunk<A>) => readonly [Chunk<A>, Chunk<A>]
  <A>(self: Chunk<A>, n: number): readonly [Chunk<A>, Chunk<A>]
}
```
