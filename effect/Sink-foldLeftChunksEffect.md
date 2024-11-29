# foldLeftChunksEffect

A sink that effectfully folds its input chunks with the provided function
and initial state. `f` must preserve chunking-invariance.

To import and use `foldLeftChunksEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldLeftChunksEffect
undefined

**Signature**

```ts
export declare const foldLeftChunksEffect: <S, In, E, R>(
  s: S,
  f: (s: S, chunk: Chunk.Chunk<In>) => Effect.Effect<S, E, R>
) => Sink<S, In, never, E, R>
```
