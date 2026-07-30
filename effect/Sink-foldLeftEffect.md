Package: `effect`<br />
Module: `Sink`<br />

## Sink.foldLeftEffect

A sink that effectfully folds its inputs with the provided function and
initial state.

**Signature**

```ts
declare const foldLeftEffect: <S, In, E, R>(s: S, f: (s: S, input: In) => Effect.Effect<S, E, R>) => Sink<S, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L755)

Since v2.0.0