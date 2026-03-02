Package: `effect`<br />
Module: `Sink`<br />

## Sink.reduce

A sink that reduces its inputs using the provided function `f` starting from
the provided `initial` state.

**Signature**

```ts
declare const reduce: <S, In>(initial: LazyArg<S>, f: (s: S, input: In) => S) => Sink<S, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1170)

Since v2.0.0