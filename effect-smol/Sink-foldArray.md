Package: `effect`<br />
Module: `Sink`<br />

## Sink.foldArray

Folds non-empty input arrays into state with an effectful function.

The initial state is evaluated lazily. After each pulled array is folded,
the sink continues while `contFn` returns `true`; otherwise it completes
with the current state.

**Signature**

```ts
declare const foldArray: <S, In, E = never, R = never>(s: LazyArg<S>, contFn: Predicate<S>, f: (s: S, input: Arr.NonEmptyReadonlyArray<In>) => Effect.Effect<S, E, R>) => Sink<S, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L725)

Since v4.0.0