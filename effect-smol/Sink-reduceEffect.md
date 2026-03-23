Package: `effect`<br />
Module: `Sink`<br />

## Sink.reduceEffect

A sink that reduces its inputs using the provided effectful function `f`
starting from the specified `initial` state.

**Signature**

```ts
declare const reduceEffect: <S, In, E, R>(initial: LazyArg<S>, f: (s: S, input: In) => Effect.Effect<S, E, R>) => Sink<S, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1211)

Since v2.0.0