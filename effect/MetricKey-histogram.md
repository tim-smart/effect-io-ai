## histogram

Creates a metric key for a histogram, with the specified name and boundaries.

**Signature**

```ts
declare const histogram: (name: string, boundaries: MetricBoundaries.MetricBoundaries, description?: string) => MetricKey.Histogram
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricKey.ts#L168)

Since v2.0.0