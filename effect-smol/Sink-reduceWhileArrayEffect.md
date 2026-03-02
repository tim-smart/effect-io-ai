Package: `effect`<br />
Module: `Sink`<br />

## Sink.reduceWhileArrayEffect

A sink that reduces its inputs using the provided effectful function `f`
starting from the provided `initial` state while the specified `predicate`
returns `true`.

**Signature**

```ts
declare const reduceWhileArrayEffect: <S, In, E, R>(initial: LazyArg<S>, predicate: Predicate<S>, f: (s: S, input: NonEmptyReadonlyArray<In>) => Effect.Effect<S, E, R>) => Sink<S, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1139)

Since v4.0.0