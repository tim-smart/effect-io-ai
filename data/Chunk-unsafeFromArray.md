# unsafeFromArray

Wraps an array into a chunk without copying, unsafe on mutable arrays

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const unsafeFromArray: <A>(self: readonly A[]) => Chunk<A>
```
