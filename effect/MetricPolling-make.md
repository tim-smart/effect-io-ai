# make

Constructs a new polling metric from a metric and poll effect.

To import and use `make` from the "MetricPolling" module:

```ts
import * as MetricPolling from "effect/MetricPolling"
// Can be accessed like this
MetricPolling.make
```

**Signature**

```ts
export declare const make: <Type, In, Out, R, E>(
  metric: Metric.Metric<Type, In, Out>,
  poll: Effect.Effect<R, E, In>
) => PollingMetric<Type, In, R, E, Out>
```
