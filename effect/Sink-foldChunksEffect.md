# foldChunksEffect

A sink that effectfully folds its input chunks with the provided function,
termination predicate and initial state. `contFn` condition is checked only
for the initial value and at the end of processing of each chunk. `f` and
`contFn` must preserve chunking-invariance.

To import and use `foldChunksEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldChunksEffect
undefined

**Signature**

```ts
export declare const foldChunksEffect: <S, In, E, R>(
  s: S,
  contFn: Predicate<S>,
  f: (s: S, chunk: Chunk.Chunk<In>) => Effect.Effect<S, E, R>
) => Sink<S, In, In, E, R>
```
