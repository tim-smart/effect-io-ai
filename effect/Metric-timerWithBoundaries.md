## timerWithBoundaries

Creates a timer metric, based on a histogram created from the provided
boundaries, which keeps track of durations in milliseconds. The unit of time
will automatically be added to the metric as a tag (i.e.
`"time_unit: milliseconds"`).

**Signature**

```ts
declare const timerWithBoundaries: (name: string, boundaries: ReadonlyArray<number>, description?: string) => Metric<MetricKeyType.MetricKeyType.Histogram, Duration.Duration, MetricState.MetricState.Histogram>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L522)

Since v2.0.0