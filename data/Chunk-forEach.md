# forEach

Iterate over the chunk applying `f`.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const forEach: {
  <A>(f: (a: A) => void): (self: Chunk<A>) => void
  <A>(self: Chunk<A>, f: (a: A) => void): void
}
```
