# gauge

Represents a Gauge metric that tracks and reports a single numerical value at a specific moment.
Gauges are suitable for metrics that represent instantaneous values, such as memory usage or CPU load.

To import and use `gauge` from the "Metric" module:

```ts
import * as Metric from 'effect/Metric'

// Can be accessed like this
Metric.gauge
```

**Example**

```ts
import * as Metric from 'effect/Metric'

const numberGauge = Metric.gauge('memory_usage', {
  description: 'A gauge for memory usage',
})

const bigintGauge = Metric.gauge('cpu_load', {
  description: 'A gauge for CPU load',
  bigint: true,
})
```

**Signature**

```ts
export declare const gauge: {
  (name: string, options?: { readonly description?: string; readonly bigint?: false }): Metric.Gauge<number>
  (name: string, options: { readonly description?: string; readonly bigint: true }): Metric.Gauge<bigint>
}
```
