# exponential

A helper method to create histogram bucket boundaries for a histogram
with exponentially increasing values.

To import and use `exponential` from the "MetricBoundaries" module:

```ts
import * as MetricBoundaries from '@effect/io/MetricBoundaries'

// Can be accessed like this
MetricBoundaries.exponential
```

**Signature**

```ts
export declare const exponential: (options: {
  readonly start: number
  readonly factor: number
  readonly count: number
}) => MetricBoundaries
```
