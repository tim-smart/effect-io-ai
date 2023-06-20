# linear

A helper method to create histogram bucket boundaries for a histogram
with linear increasing values.

To import and use `linear` from the "Boundaries" module:

```ts
import * as Boundaries from '@effect/io/Metric/Boundaries'

// Can be accessed like this
Boundaries.linear
```

**Signature**

```ts
export declare const linear: (start: number, width: number, count: number) => MetricBoundaries
```
