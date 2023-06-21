# histogram

A numeric histogram metric, which keeps track of the count of numbers that
fall in bins with the specified boundaries.

To import and use `histogram` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.histogram
```

**Signature**

```ts
export declare const histogram: (
  name: string,
  boundaries: MetricBoundaries.MetricBoundaries,
  description?: string
) => Metric<MetricKeyType.MetricKeyType.Histogram, number, MetricState.MetricState.Histogram>
```
