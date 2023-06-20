# timerWithBoundaries

Creates a timer metric, based on a histogram created from the provided
boundaries, which keeps track of durations in milliseconds. The unit of time
will automatically be added to the metric as a tag (i.e.
`"time_unit: milliseconds"`).

To import and use `timerWithBoundaries` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.timerWithBoundaries
```

**Signature**

```ts
export declare const timerWithBoundaries: (
  name: string,
  boundaries: Chunk.Chunk<number>
) => Metric<MetricKeyType.MetricKeyType.Histogram, Duration.Duration, MetricState.MetricState.Histogram>
```
