# timer

Creates a timer metric, based on a histogram, which keeps track of
durations in milliseconds. The unit of time will automatically be added to
the metric as a tag (i.e. `"time_unit: milliseconds"`).

To import and use `timer` from the "Metric" module:

ts
import \* as Metric from "effect/Metric"
// Can be accessed like this
Metric.timer
undefined

**Signature**

```ts
export declare const timer: (
  name: string,
  description?: string
) => Metric<MetricKeyType.MetricKeyType.Histogram, Duration.Duration, MetricState.MetricState.Histogram>
```
