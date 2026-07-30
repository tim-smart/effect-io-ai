Package: `effect`<br />
Module: `Sink`<br />

## Sink.foldLeftChunksEffect

A sink that effectfully folds its input chunks with the provided function
and initial state. `f` must preserve chunking-invariance.

**Signature**

```ts
declare const foldLeftChunksEffect: <S, In, E, R>(s: S, f: (s: S, chunk: Chunk.Chunk<In>) => Effect.Effect<S, E, R>) => Sink<S, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L743)

Since v2.0.0