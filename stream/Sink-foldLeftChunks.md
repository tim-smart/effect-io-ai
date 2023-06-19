# foldLeftChunks

A sink that folds its input chunks with the provided function and initial
state. `f` must preserve chunking-invariance.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const foldLeftChunks: <S, In>(
  s: S,
  f: (s: S, chunk: Chunk.Chunk<In>) => S
) => Sink<never, never, In, never, S>
```
