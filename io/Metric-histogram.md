# histogram

A numeric histogram metric, which keeps track of the count of numbers that
fall in bins with the specified boundaries.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const histogram: (
  name: string,
  boundaries: MetricBoundaries.MetricBoundaries
) => Metric<MetricKeyType.MetricKeyType.Histogram, number, MetricState.MetricState.Histogram>
```
