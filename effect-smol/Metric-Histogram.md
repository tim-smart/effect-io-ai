Package: `effect`<br />
Module: `Metric`<br />

## Metric.Histogram

A Histogram metric that records observations in configurable buckets to analyze value distributions.

Histograms are ideal for measuring request durations, response sizes, and other continuous values
where you need to understand the distribution of values rather than just aggregates.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class HistogramInterfaceError
  extends Data.TaggedError("HistogramInterfaceError")<{
    readonly operation: string
  }>
{}

const program = Effect.gen(function*() {
  // Create histograms with different boundary strategies
  const responseTimeHistogram: Metric.Histogram<number> = Metric.histogram(
    "http_response_time_ms",
    {
      description: "HTTP response time distribution in milliseconds",
      boundaries: Metric.linearBoundaries({ start: 0, width: 50, count: 20 }) // 0, 50, 100, ..., 950
    }
  )

  const fileSizeHistogram: Metric.Histogram<number> = Metric.histogram(
    "file_size_bytes",
    {
      description: "File size distribution in bytes",
      boundaries: Metric.exponentialBoundaries({
        start: 1,
        factor: 2,
        count: 10
      }) // 1, 2, 4, 8, ..., 512
    }
  )

  // Record observations (values get placed into appropriate buckets)
  yield* Metric.update(responseTimeHistogram, 125) // Goes into 100-150ms bucket
  yield* Metric.update(responseTimeHistogram, 75) // Goes into 50-100ms bucket
  yield* Metric.update(responseTimeHistogram, 200) // Goes into 150-200ms bucket
  yield* Metric.update(responseTimeHistogram, 45) // Goes into 0-50ms bucket

  yield* Metric.update(fileSizeHistogram, 3) // Goes into 2-4 bytes bucket
  yield* Metric.update(fileSizeHistogram, 15) // Goes into 8-16 bytes bucket
  yield* Metric.update(fileSizeHistogram, 100) // Goes into 64-128 bytes bucket

  // Read histogram state
  const responseTimeState: Metric.HistogramState = yield* Metric.value(
    responseTimeHistogram
  )
  const fileSizeState: Metric.HistogramState = yield* Metric.value(
    fileSizeHistogram
  )

  // Histogram state contains:
  // - buckets: Array of [boundary, cumulativeCount] pairs
  // - count: total number of observations
  // - min: smallest observed value
  // - max: largest observed value
  // - sum: sum of all observed values

  return {
    responseTime: {
      totalRequests: responseTimeState.count, // 4
      fastestRequest: responseTimeState.min, // 45
      slowestRequest: responseTimeState.max, // 200
      totalTime: responseTimeState.sum, // 445
      averageTime: responseTimeState.sum / responseTimeState.count // 111.25
    },
    fileSize: {
      totalFiles: fileSizeState.count, // 3
      smallestFile: fileSizeState.min, // 3
      largestFile: fileSizeState.max, // 100
      totalBytes: fileSizeState.sum // 118
    }
  }
})
```

**Signature**

```ts
export interface Histogram<Input> extends Metric<Input, HistogramState> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L752)

Since v2.0.0