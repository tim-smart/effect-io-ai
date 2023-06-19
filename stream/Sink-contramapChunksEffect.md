# contramapChunksEffect

Effectfully transforms this sink's input chunks. `f` must preserve
chunking-invariance.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const contramapChunksEffect: {
  <In0, R2, E2, In>(f: (chunk: Chunk.Chunk<In0>) => Effect.Effect<R2, E2, Chunk.Chunk<In>>): <R, E, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E2 | E, In0, L, Z>
  <R, E, L, Z, In0, R2, E2, In>(
    self: Sink<R, E, In, L, Z>,
    f: (chunk: Chunk.Chunk<In0>) => Effect.Effect<R2, E2, Chunk.Chunk<In>>
  ): Sink<R | R2, E | E2, In0, L, Z>
}
```
