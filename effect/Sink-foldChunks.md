# foldChunks

A sink that folds its input chunks with the provided function, termination
predicate and initial state. `contFn` condition is checked only for the
initial value and at the end of processing of each chunk. `f` and `contFn`
must preserve chunking-invariance.

To import and use `foldChunks` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldChunks
```

**Signature**

```ts
export declare const foldChunks: <S, In>(
  s: S,
  contFn: Predicate<S>,
  f: (s: S, chunk: Chunk.Chunk<In>) => S
) => Sink<S, In, never, never, never>
```
