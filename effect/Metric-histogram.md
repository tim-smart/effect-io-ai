## histogram

Represents a Histogram metric that records observations in specified value boundaries.
Histogram metrics are useful for measuring the distribution of values within a range.

**Example**

```ts
import { Metric, MetricBoundaries } from "effect"

const latencyHistogram = Metric.histogram("latency_histogram",
  MetricBoundaries.linear({ start: 0, width: 10, count: 11 }),
  "Measures the distribution of request latency."
);
```

**Signature**

```ts
declare const histogram: (name: string, boundaries: MetricBoundaries.MetricBoundaries, description?: string) => Metric<MetricKeyType.MetricKeyType.Histogram, number, MetricState.MetricState.Histogram>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L304)

Since v2.0.0