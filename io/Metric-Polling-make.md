# make

Constructs a new polling metric from a metric and poll effect.

To import and use `make` from the "Polling" module:

```ts
import * as Polling from '@effect/io/Metric/Polling'

// Can be accessed like this
Polling.make
```

**Signature**

```ts
export declare const make: <Type, In, Out, R, E>(
  metric: Metric.Metric<Type, In, Out>,
  poll: Effect.Effect<R, E, In>
) => PollingMetric<Type, In, R, E, Out>
```
