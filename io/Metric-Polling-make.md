# make

Constructs a new polling metric from a metric and poll effect.

Part of the `Polling` module, imported from `@effect/io/Metric/Polling`.

**Signature**

```ts
export declare const make: <Type, In, Out, R, E>(
  metric: Metric.Metric<Type, In, Out>,
  poll: Effect.Effect<R, E, In>
) => PollingMetric<Type, In, R, E, Out>
```
