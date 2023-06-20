# foldLeftChunks

A sink that folds its input chunks with the provided function and initial
state. `f` must preserve chunking-invariance.

To import and use `foldLeftChunks` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.foldLeftChunks
```

**Signature**

```ts
export declare const foldLeftChunks: <S, In>(
  s: S,
  f: (s: S, chunk: Chunk.Chunk<In>) => S
) => Sink<never, never, In, never, S>
```
