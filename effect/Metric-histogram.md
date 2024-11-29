# histogram

Represents a Histogram metric that records observations in specified value boundaries.
Histogram metrics are useful for measuring the distribution of values within a range.

To import and use `histogram` from the "Metric" module:

ts
import \* as Metric from "effect/Metric"
// Can be accessed like this
Metric.histogram
undefined

**Example**

```ts
import { Metric, MetricBoundaries } from "effect"

const latencyHistogram = Metric.histogram(
  "latency_histogram",
  MetricBoundaries.linear({ start: 0, width: 10, count: 11 }),
  "Measures the distribution of request latency."
)
```

**Signature**

```ts
export declare const histogram: (
  name: string,
  boundaries: MetricBoundaries.MetricBoundaries,
  description?: string
) => Metric<MetricKeyType.MetricKeyType.Histogram, number, MetricState.MetricState.Histogram>
```
