Package: `effect`<br />
Module: `Sink`<br />

## Sink.reduceWhileArray

A sink that reduces non-empty input arrays from the provided `initial` state
with `f` while the specified `predicate` returns `true`.

**Signature**

```ts
declare const reduceWhileArray: <S, In>(initial: LazyArg<S>, contFn: Predicate<S>, f: (s: S, input: NonEmptyReadonlyArray<In>) => S) => Sink<S, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1318)

Since v4.0.0