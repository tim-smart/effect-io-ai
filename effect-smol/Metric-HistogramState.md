Package: `effect`<br />
Module: `Metric`<br />

## Metric.HistogramState

State interface for Histogram metrics containing bucket distributions and aggregate statistics.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class HistogramStateError extends Data.TaggedError("HistogramStateError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create histogram with linear boundaries
  const responseTimeHistogram = Metric.histogram("api_response_time_ms", {
    description: "API response time distribution",
    boundaries: Metric.linearBoundaries({ start: 0, width: 100, count: 10 }) // 0, 100, 200, ..., 900
  })

  // Record observations
  yield* Metric.update(responseTimeHistogram, 50) // Fast response
  yield* Metric.update(responseTimeHistogram, 150) // Average response
  yield* Metric.update(responseTimeHistogram, 750) // Slow response
  yield* Metric.update(responseTimeHistogram, 250) // Average response
  yield* Metric.update(responseTimeHistogram, 95) // Fast response

  // Read histogram state
  const state: Metric.HistogramState = yield* Metric.value(
    responseTimeHistogram
  )

  // HistogramState contains:
  // - buckets: Array of [boundary, cumulativeCount] pairs showing distribution
  // - count: total number of observations
  // - min: smallest observed value
  // - max: largest observed value
  // - sum: sum of all observed values

  // Analyze bucket distribution
  const analyzeBuckets = (buckets: ReadonlyArray<[number, number]>) => {
    const analysis: Array<
      { range: string; count: number; percentage: number }
    > = []
    let previousCount = 0
    const totalCount = buckets[buckets.length - 1]?.[1] ?? 0

    for (let i = 0; i < buckets.length; i++) {
      const [boundary, cumulativeCount] = buckets[i]
      const bucketCount = cumulativeCount - previousCount
      const percentage = totalCount > 0 ? (bucketCount / totalCount) * 100 : 0
      const prevBoundary = i === 0 ? 0 : buckets[i - 1][0]

      analysis.push({
        range: `${prevBoundary}-${boundary}ms`,
        count: bucketCount,
        percentage: Math.round(percentage * 10) / 10
      })
      previousCount = cumulativeCount
    }
    return analysis
  }

  const bucketAnalysis = analyzeBuckets(state.buckets)

  return {
    responseTime: {
      totalRequests: state.count, // 5
      fastestResponse: state.min, // 50
      slowestResponse: state.max, // 750
      averageResponse: state.sum / state.count, // 268
      totalTime: state.sum, // 1340
      distribution: bucketAnalysis
      // Example distribution:
      // [{ range: "0-100ms", count: 2, percentage: 40.0 },
      //  { range: "100-200ms", count: 1, percentage: 20.0 },
      //  { range: "200-300ms", count: 1, percentage: 20.0 },
      //  { range: "700-800ms", count: 1, percentage: 20.0 }]
    }
  }
})
```

**Signature**

```ts
export interface HistogramState {
  readonly buckets: ReadonlyArray<[number, number]>
  readonly count: number
  readonly min: number
  readonly max: number
  readonly sum: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L838)

Since v2.0.0