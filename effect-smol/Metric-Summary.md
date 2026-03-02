Package: `effect`<br />
Module: `Metric`<br />

## Metric.Summary

A Summary metric that calculates quantiles over a sliding time window of observations.

Summaries provide statistical insights into value distributions by tracking specific quantiles
(percentiles) such as median (50th), 95th percentile, 99th percentile, etc. They're ideal for
understanding performance characteristics like response time distributions.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class SummaryInterfaceError extends Data.TaggedError("SummaryInterfaceError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create summaries with different quantile configurations
  const responseTimeSummary: Metric.Summary<number> = Metric.summary(
    "api_response_time_ms",
    {
      description: "API response time distribution in milliseconds",
      maxAge: "5 minutes", // Keep observations for 5 minutes
      maxSize: 1000, // Keep up to 1000 observations
      quantiles: [0.5, 0.95, 0.99] // Track median, 95th, and 99th percentiles
    }
  )

  const requestSizeSummary: Metric.Summary<number> = Metric.summary(
    "request_size_bytes",
    {
      description: "Request payload size distribution",
      maxAge: "10 minutes",
      maxSize: 500,
      quantiles: [0.25, 0.5, 0.75, 0.9] // Track quartiles and 90th percentile
    }
  )

  // Record observations (values are stored in time-based sliding window)
  yield* Metric.update(responseTimeSummary, 120) // Fast response
  yield* Metric.update(responseTimeSummary, 250) // Average response
  yield* Metric.update(responseTimeSummary, 45) // Very fast response
  yield* Metric.update(responseTimeSummary, 890) // Slow response
  yield* Metric.update(responseTimeSummary, 156) // Average response

  yield* Metric.update(requestSizeSummary, 1024) // 1KB request
  yield* Metric.update(requestSizeSummary, 512) // 512B request
  yield* Metric.update(requestSizeSummary, 2048) // 2KB request

  // Read summary state
  const responseTimeState: Metric.SummaryState = yield* Metric.value(
    responseTimeSummary
  )
  const requestSizeState: Metric.SummaryState = yield* Metric.value(
    requestSizeSummary
  )

  // Summary state contains:
  // - quantiles: Array of [quantile, optionalValue] pairs
  // - count: total number of observations in window
  // - min: smallest observed value in window
  // - max: largest observed value in window
  // - sum: sum of all observed values in window

  // Extract quantile values safely
  const getQuantileValue = (
    quantiles: ReadonlyArray<readonly [number, number | undefined]>,
    q: number
  ) => quantiles.find(([quantile]) => quantile === q)?.[1]

  const median = getQuantileValue(responseTimeState.quantiles, 0.5)
  const p95 = getQuantileValue(responseTimeState.quantiles, 0.95)
  const p99 = getQuantileValue(responseTimeState.quantiles, 0.99)

  return {
    responseTime: {
      totalRequests: responseTimeState.count, // 5
      fastestResponse: responseTimeState.min, // 45
      slowestResponse: responseTimeState.max, // 890
      totalTime: responseTimeState.sum, // 1461
      averageTime: responseTimeState.sum / responseTimeState.count, // 292.2
      medianTime: median ?? null, // ~156
      p95Time: p95 ?? null, // ~890
      p99Time: p99 ?? null // ~890
    },
    requestSize: {
      totalRequests: requestSizeState.count, // 3
      averageSize: requestSizeState.sum / requestSizeState.count // ~1194.7
    }
  }
})
```

**Signature**

```ts
export interface Summary<Input> extends Metric<Input, SummaryState> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L941)

Since v2.0.0