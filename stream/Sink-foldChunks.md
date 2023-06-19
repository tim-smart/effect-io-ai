# foldChunks

A sink that folds its input chunks with the provided function, termination
predicate and initial state. `contFn` condition is checked only for the
initial value and at the end of processing of each chunk. `f` and `contFn`
must preserve chunking-invariance.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const foldChunks: <S, In>(
  s: S,
  contFn: Predicate<S>,
  f: (s: S, chunk: Chunk.Chunk<In>) => S
) => Sink<never, never, In, never, S>
```
