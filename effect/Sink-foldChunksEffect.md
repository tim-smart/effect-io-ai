## foldChunksEffect

A sink that effectfully folds its input chunks with the provided function,
termination predicate and initial state. `contFn` condition is checked only
for the initial value and at the end of processing of each chunk. `f` and
`contFn` must preserve chunking-invariance.

**Signature**

```ts
declare const foldChunksEffect: <S, In, E, R>(s: S, contFn: Predicate<S>, f: (s: S, chunk: Chunk.Chunk<In>) => Effect.Effect<S, E, R>) => Sink<S, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L699)

Since v2.0.0