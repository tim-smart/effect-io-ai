Package: `effect`<br />
Module: `Sink`<br />

## Sink.reduceWhileArray

A sink that reduces its inputs using the provided function `f` starting from
the provided `initial` state while the specified `predicate` returns `true`.

**Signature**

```ts
declare const reduceWhileArray: <S, In>(initial: LazyArg<S>, contFn: Predicate<S>, f: (s: S, input: NonEmptyReadonlyArray<In>) => S) => Sink<S, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1106)

Since v4.0.0