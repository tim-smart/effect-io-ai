Package: `effect`<br />
Module: `MetricPolling`<br />

## MetricPolling.MetricPolling

A `MetricPolling` is a combination of a metric and an effect that polls for
updates to the metric.

**Signature**

```ts
export interface MetricPolling<in out Type, in out In, out R, out E, out Out> extends Pipeable {
  readonly [MetricPollingTypeId]: MetricPollingTypeId
  /**
   * The metric that this `MetricPolling` polls to update.
   */
  readonly metric: Metric.Metric<Type, In, Out>
  /**
   * An effect that polls a value that may be fed to the metric.
   */
  readonly poll: Effect.Effect<In, E, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricPolling.ts#L31)

Since v2.0.0