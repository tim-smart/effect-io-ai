# exponential

A helper method to create histogram bucket boundaries for a histogram
with exponentially increasing values.

To import and use `exponential` from the "Boundaries" module:

```ts
import * as Boundaries from '@effect/io/Metric/Boundaries'

// Can be accessed like this
Boundaries.exponential
```

**Signature**

```ts
export declare const exponential: (start: number, factor: number, count: number) => MetricBoundaries
```
