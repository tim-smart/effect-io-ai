Package: `effect`<br />
Module: `Sink`<br />

## Sink.reduceWhileEffect

A sink that effectfully reduces input elements from the provided `initial`
state with `f` while the specified `predicate` returns `true`.

**Signature**

```ts
declare const reduceWhileEffect: <S, In, E, R>(initial: LazyArg<S>, predicate: Predicate<S>, f: (s: S, input: In) => Effect.Effect<S, E, R>) => Sink<S, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1277)

Since v4.0.0