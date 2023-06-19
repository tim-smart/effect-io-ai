# get

This function provides a safe way to read a value at a particular index from a `ReadonlyArray`.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const get: {
  (index: number): <A>(self: readonly A[]) => Option<A>
  <A>(self: readonly A[], index: number): Option<A>
}
```
