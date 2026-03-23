Package: `effect`<br />
Module: `Sink`<br />

## Sink.reduceWhileEffect

A sink that reduces its inputs using the provided effectful function `f`
starting from the provided `initial` state while the specified `predicate`
returns `true`.

**Signature**

```ts
declare const reduceWhileEffect: <S, In, E, R>(initial: LazyArg<S>, predicate: Predicate<S>, f: (s: S, input: In) => Effect.Effect<S, E, R>) => Sink<S, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1068)

Since v2.0.0