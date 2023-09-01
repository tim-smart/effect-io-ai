# histogram

Creates a metric key for a histogram, with the specified name and boundaries.

To import and use `histogram` from the "MetricKey" module:

```ts
import * as MetricKey from '@effect/io/MetricKey'

// Can be accessed like this
MetricKey.histogram
```

**Signature**

```ts
export declare const histogram: (
  name: string,
  boundaries: MetricBoundaries.MetricBoundaries,
  description?: string
) => MetricKey.Histogram
```
