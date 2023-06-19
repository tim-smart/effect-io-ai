# dimapChunks

Transforms both input chunks and result of this sink using the provided
functions.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const dimapChunks: {
  <In0, In, Z, Z2>(f: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>, g: (z: Z) => Z2): <R, E, L>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R, E, In0, L, Z2>
  <R, E, L, In0, In, Z, Z2>(
    self: Sink<R, E, In, L, Z>,
    f: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>,
    g: (z: Z) => Z2
  ): Sink<R, E, In0, L, Z2>
}
```
