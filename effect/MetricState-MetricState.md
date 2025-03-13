Package: `effect`<br />
Module: `MetricState`<br />

## MetricState.MetricState

A `MetricState` describes the state of a metric. The type parameter of a
metric state corresponds to the type of the metric key (`MetricStateType`).
This phantom type parameter is used to tie keys to their expected states.

**Signature**

```ts
export interface MetricState<in A> extends MetricState.Variance<A>, Equal.Equal, Pipeable {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricState.ts#L91)

Since v2.0.0