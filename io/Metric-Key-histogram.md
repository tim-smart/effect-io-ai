# histogram

Creates a metric key for a histogram, with the specified name and boundaries.

To import and use `histogram` from the "Key" module:

```ts
import * as Key from '@effect/io/Metric/Key'

// Can be accessed like this
Key.histogram
```

**Signature**

```ts
export declare const histogram: (
  name: string,
  boundaries: MetricBoundaries.MetricBoundaries,
  description?: string
) => MetricKey.Histogram
```
