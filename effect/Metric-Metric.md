Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric

A `Metric<Type, In, Out>` represents a concurrent metric which accepts
updates of type `In` and are aggregated to a stateful value of type `Out`.

For example, a counter metric would have type `Metric<number, number>`,
representing the fact that the metric can be updated with numbers (the amount
to increment or decrement the counter by), and the state of the counter is a
number.

There are five primitive metric types supported by Effect:

  - Counters
  - Frequencies
  - Gauges
  - Histograms
  - Summaries

**Signature**

```ts
export interface Metric<in out Type, in In, out Out> extends Metric.Variance<Type, In, Out>, Pipeable {
  /**
   * The type of the underlying primitive metric. For example, this could be
   * `MetricKeyType.Counter` or `MetricKeyType.Gauge`.
   */
  readonly keyType: Type
  unsafeUpdate(input: In, extraTags: ReadonlyArray<MetricLabel.MetricLabel>): void
  unsafeValue(extraTags: ReadonlyArray<MetricLabel.MetricLabel>): Out
  unsafeModify(input: In, extraTags: ReadonlyArray<MetricLabel.MetricLabel>): void
  register(): this
  <A extends In, E, R>(effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L51)

Since v2.0.0