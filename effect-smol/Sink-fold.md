Package: `effect`<br />
Module: `Sink`<br />

## Sink.fold

A sink that folds its inputs with the provided function, termination
predicate and initial state.

**Signature**

```ts
declare const fold: <S, In, E = never, R = never>(s: LazyArg<S>, contFn: Predicate<S>, f: (s: S, input: In) => Effect.Effect<S, E, R>) => Sink<S, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L636)

Since v2.0.0