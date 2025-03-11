## fold

A sink that folds its inputs with the provided function, termination
predicate and initial state.

**Signature**

```ts
declare const fold: <S, In>(s: S, contFn: Predicate<S>, f: (s: S, input: In) => S) => Sink<S, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L651)

Since v2.0.0