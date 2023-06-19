# contramapChunks

Transforms this sink's input chunks. `f` must preserve chunking-invariance.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const contramapChunks: {
  <In0, In>(f: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>): <R, E, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R, E, In0, L, Z>
  <R, E, L, Z, In0, In>(self: Sink<R, E, In, L, Z>, f: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>): Sink<
    R,
    E,
    In0,
    L,
    Z
  >
}
```
