## foldLeft

A sink that folds its inputs with the provided function and initial state.

**Signature**

```ts
declare const foldLeft: <S, In>(s: S, f: (s: S, input: In) => S) => Sink<S, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L724)

Since v2.0.0