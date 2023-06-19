# flatten

Flattens a chunk of chunks into a single chunk by concatenating all chunks.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const flatten: <A>(self: Chunk<Chunk<A>>) => Chunk<A>
```
