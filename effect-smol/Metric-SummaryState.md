Package: `effect`<br />
Module: `Metric`<br />

## Metric.SummaryState

State interface for Summary metrics containing quantile calculations and aggregate statistics.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class SummaryStateError extends Data.TaggedError("SummaryStateError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create summary with specific quantiles
  const responseTimeSummary = Metric.summary("api_response_latency", {
    description: "API response time distribution with quantiles",
    maxAge: "5 minutes",
    maxSize: 1000,
    quantiles: [0.5, 0.95, 0.99] // Track median, 95th, and 99th percentiles
  })

  // Record observations over time
  yield* Metric.update(responseTimeSummary, 120) // Fast response
  yield* Metric.update(responseTimeSummary, 250) // Average response
  yield* Metric.update(responseTimeSummary, 45) // Very fast response
  yield* Metric.update(responseTimeSummary, 890) // Slow response
  yield* Metric.update(responseTimeSummary, 156) // Average response
  yield* Metric.update(responseTimeSummary, 78) // Fast response
  yield* Metric.update(responseTimeSummary, 340) // Slower response

  // Read summary state
  const state: Metric.SummaryState = yield* Metric.value(responseTimeSummary)

  // SummaryState contains:
  // - quantiles: Array of [quantile, optionalValue] pairs showing percentile values
  // - count: total number of observations in current window
  // - min: smallest observed value in window
  // - max: largest observed value in window
  // - sum: sum of all observed values in window

  // Extract quantile information safely
  const extractQuantiles = (
    quantiles: ReadonlyArray<readonly [number, number | undefined]>
  ) => {
    const result: Record<string, number | null> = {}
    for (const [quantile, valueOption] of quantiles) {
      const percentile = Math.round(quantile * 100)
      result[`p${percentile}`] = valueOption ?? null
    }
    return result
  }

  const quantileValues = extractQuantiles(state.quantiles)

  return {
    latencyAnalysis: {
      totalRequests: state.count, // 7
      fastestResponse: state.min, // 45
      slowestResponse: state.max, // 890
      averageResponse: state.sum / state.count, // ~268.4
      totalLatency: state.sum, // 1879
      percentiles: quantileValues,
      // Example percentiles:
      // { p50: 156, p95: 890, p99: 890 }
      performance: {
        fast: quantileValues.p50 !== null && quantileValues.p50 < 200
          ? "Good"
          : "Needs improvement",
        reliability: quantileValues.p95 !== null && quantileValues.p95 < 500
          ? "Reliable"
          : "Concerning"
      }
    }
  }
})
```

**Signature**

```ts
export interface SummaryState {
  readonly quantiles: ReadonlyArray<readonly [number, number | undefined]>
  readonly count: number
  readonly min: number
  readonly max: number
  readonly sum: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1022)

Since v2.0.0