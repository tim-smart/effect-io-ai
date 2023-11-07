# zip

Zips this polling metric with the specified polling metric.

To import and use `zip` from the "MetricPolling" module:

```ts
import * as MetricPolling from 'effect/MetricPolling'

// Can be accessed like this
MetricPolling.zip
```

**Signature**

```ts
export declare const zip: {
  <Type2, In2, R2, E2, Out2>(that: PollingMetric<Type2, In2, R2, E2, Out2>): <Type, In, R, E, Out>(
    self: PollingMetric<Type, In, R, E, Out>
  ) => PollingMetric<readonly [Type, Type2], readonly [In, In2], R2 | R, E2 | E, readonly [Out, Out2]>
  <Type, In, R, E, Out, Type2, In2, R2, E2, Out2>(
    self: PollingMetric<Type, In, R, E, Out>,
    that: PollingMetric<Type2, In2, R2, E2, Out2>
  ): PollingMetric<readonly [Type, Type2], readonly [In, In2], R | R2, E | E2, readonly [Out, Out2]>
}
```
