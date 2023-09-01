# linear

A helper method to create histogram bucket boundaries for a histogram
with linear increasing values.

To import and use `linear` from the "MetricBoundaries" module:

```ts
import * as MetricBoundaries from '@effect/io/MetricBoundaries'

// Can be accessed like this
MetricBoundaries.linear
```

**Signature**

```ts
export declare const linear: (options: {
  readonly start: number
  readonly width: number
  readonly count: number
}) => MetricBoundaries
```
