Package: `effect`<br />
Module: `Sink`<br />

## Sink.takeWhileFilterEffect

Effectfully applies a `FilterEffect` to input elements while it succeeds,
collecting each successful output.

The first input for which the filter fails is consumed and excluded from the
result. Any later elements from the same pulled array are returned as
leftovers.

**Signature**

```ts
declare const takeWhileFilterEffect: <In, Out, X, E, R>(filter: Filter.FilterEffect<In, Out, X, E, R>) => Sink<Array<Out>, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1507)

Since v4.0.0