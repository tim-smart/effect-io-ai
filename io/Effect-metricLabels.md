# metricLabels

Retrieves the metric labels associated with the current scope.

To import and use `metricLabels` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.metricLabels
```

**Signature**

```ts
export declare const metricLabels: Effect<never, never, HashSet.HashSet<MetricLabel.MetricLabel>>
```