Package: `effect`<br />
Module: `Metric`<br />

## Metric.summary

Creates a `Summary` metric that records observations and calculates quantiles
which takes a value as input and uses the current time.

**When to use**

Use when summary metrics are most suitable for providing statistical information about
a set of values, including quantiles.

**Details**

- `description` - An description of the `Summary`.
- `attributes`  - The attributes to associate with the `Summary`.
- `maxAge`      - The maximum age of observations to retain.
- `maxSize`     - The maximum number of observations to keep.
- `quantiles`   - An array of quantiles to calculate (e.g., [0.5, 0.9]).

**Example** (Creating summary metrics)

```ts
import { Data, Duration, Effect, Metric } from "effect"

class SummaryError extends Data.TaggedError("SummaryError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create a summary for API response times
  const responseTimeSummary = Metric.summary("api_response_time", {
    description: "API response time quantiles over 5-minute windows",
    maxAge: Duration.minutes(5), // Keep observations for 5 minutes
    maxSize: 1000, // Maximum 1000 observations in memory
    quantiles: [0.5, 0.9, 0.95, 0.99] // 50th, 90th, 95th, 99th percentiles
  })

  // Create a summary for request payload sizes
  const payloadSizeSummary = Metric.summary("request_payload_size", {
    description: "Request payload size distribution over 2-minute windows",
    maxAge: Duration.minutes(2), // Shorter window for recent trends
    maxSize: 500, // Smaller buffer for memory efficiency
    quantiles: [0.5, 0.75, 0.9], // Median, 75th, 90th percentiles
    attributes: { service: "upload-service" }
  })

  // Record deterministic response times
  const responseTimes = [82, 96, 104, 118, 135, 170, 210, 240]
  for (const responseTime of responseTimes) {
    yield* Metric.update(responseTimeSummary, responseTime)
  }

  // Record some payload sizes
  yield* Metric.update(payloadSizeSummary, 1.2) // 1.2KB
  yield* Metric.update(payloadSizeSummary, 5.8) // 5.8KB
  yield* Metric.update(payloadSizeSummary, 15.6) // 15.6KB
  yield* Metric.update(payloadSizeSummary, 3.4) // 3.4KB

  // Get summary statistics with quantiles
  const responseStats = yield* Metric.value(responseTimeSummary)
  const payloadStats = yield* Metric.value(payloadSizeSummary)

  console.log({
    count: responseStats.count,
    min: responseStats.min,
    max: responseStats.max,
    sum: responseStats.sum
  }) // { count: 8, min: 82, max: 240, sum: 1155 }

  console.log({
    count: payloadStats.count,
    min: payloadStats.min,
    max: payloadStats.max,
    sum: payloadStats.sum
  }) // { count: 4, min: 1.2, max: 15.6, sum: 26 }

  // Both summaries include quantile information for their configured windows.

  return { responseStats, payloadStats }
})
```

**Signature**

```ts
declare const summary: (name: string, options: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly maxAge: Duration.Input; readonly maxSize: number; readonly quantiles: ReadonlyArray<number>; }) => Summary<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2589)

Since v2.0.0