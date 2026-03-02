Package: `effect`<br />
Module: `Metric`<br />

## Metric.summary

Creates a `Summary` metric that records observations and calculates quantiles
which takes a value as input and uses the current time.

Summary metrics are most suitable for providing statistical information about
a set of values, including quantiles.

**Options**

- `description` - An description of the `Summary`.
- `attributes`  - The attributes to associate with the `Summary`.
- `maxAge`      - The maximum age of observations to retain.
- `maxSize`     - The maximum number of observations to keep.
- `quantiles`   - An array of quantiles to calculate (e.g., [0.5, 0.9]).

**Example**

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

  // Simulate recording various response times over time
  for (let i = 0; i < 20; i++) {
    const responseTime = 50 + Math.random() * 200 // 50-250ms
    yield* Metric.update(responseTimeSummary, responseTime)

    // Wait a bit to simulate different timestamps
    yield* Effect.sleep(Duration.millis(100))
  }

  // Record some payload sizes
  yield* Metric.update(payloadSizeSummary, 1.2) // 1.2KB
  yield* Metric.update(payloadSizeSummary, 5.8) // 5.8KB
  yield* Metric.update(payloadSizeSummary, 15.6) // 15.6KB
  yield* Metric.update(payloadSizeSummary, 3.4) // 3.4KB

  // Get summary statistics with quantiles
  const responseStats = yield* Metric.value(responseTimeSummary)
  const payloadStats = yield* Metric.value(payloadSizeSummary)

  // responseStats will contain:
  // - quantiles: [[0.5, Some(125)], [0.9, Some(220)], [0.95, Some(235)], [0.99, Some(245)]]
  // - count: 20, min: ~50, max: ~250, sum: ~2500
  // - Only observations from the last 5 minutes are included

  // payloadStats will contain quantile information for recent payload sizes
  // Older observations automatically age out based on maxAge setting

  return { responseStats, payloadStats }
})
```

**Signature**

```ts
declare const summary: (name: string, options: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly maxAge: Duration.Input; readonly maxSize: number; readonly quantiles: ReadonlyArray<number>; }) => Summary<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2560)

Since v2.0.0