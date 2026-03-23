Package: `effect`<br />
Module: `Sink`<br />

## Sink.reduceWhile

A sink that reduces its inputs using the provided function `f` starting from
the provided `initial` state while the specified `predicate` returns `true`.

**Signature**

```ts
declare const reduceWhile: <S, In>(initial: LazyArg<S>, predicate: Predicate<S>, f: (s: S, input: In) => S) => Sink<S, In, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1031)

Since v2.0.0