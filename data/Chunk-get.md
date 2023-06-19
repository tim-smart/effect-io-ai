# get

This function provides a safe way to read a value at a particular index from a `Chunk`.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const get: {
  (index: number): <A>(self: Chunk<A>) => Option<A>
  <A>(self: Chunk<A>, index: number): Option<A>
}
```
