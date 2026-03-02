Package: `effect`<br />
Module: `Sink`<br />

## Sink.reduceArray

A sink that reduces its inputs using the provided function `f` starting from
the specified `initial` state.

**Signature**

```ts
declare const reduceArray: <S, In>(initial: LazyArg<S>, f: (s: S, input: NonEmptyReadonlyArray<In>) => S) => Sink<S, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1185)

Since v2.0.0