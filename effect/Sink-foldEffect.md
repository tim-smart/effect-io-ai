Package: `effect`<br />
Module: `Sink`<br />

## Sink.foldEffect

A sink that effectfully folds its inputs with the provided function,
termination predicate and initial state.

**Signature**

```ts
declare const foldEffect: <S, In, E, R>(s: S, contFn: Predicate<S>, f: (s: S, input: In) => Effect.Effect<S, E, R>) => Sink<S, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L712)

Since v2.0.0