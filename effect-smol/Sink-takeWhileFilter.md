Package: `effect`<br />
Module: `Sink`<br />

## Sink.takeWhileFilter

Applies a `Filter` to input elements while it succeeds, collecting each
successful output.

The first input for which the filter fails is consumed and excluded from the
result. Any later elements from the same pulled array are returned as
leftovers.

**Signature**

```ts
declare const takeWhileFilter: <In, Out, X>(filter: Filter.Filter<In, Out, X>) => Sink<Array<Out>, In, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1422)

Since v4.0.0