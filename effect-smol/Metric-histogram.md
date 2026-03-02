Package: `effect`<br />
Module: `Metric`<br />

## Metric.histogram

Represents a `Histogram` metric that records observations into buckets.

Histogram metrics are most suitable for measuring the distribution of values
within a range.

**Options**

- `description` - A description of the `Histogram`.
- `attributes`  - The attributes to associate with the `Histogram`.
- `boundaries`  - The bucket boundaries of the `Histogram`

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class HistogramError extends Data.TaggedError("HistogramError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create a histogram for API response times
  const responseTimeHistogram = Metric.histogram("api_response_time", {
    description: "Distribution of API response times in milliseconds",
    boundaries: Metric.linearBoundaries({ start: 0, width: 50, count: 10 })
    // Creates buckets: 0-50ms, 50-100ms, 100-150ms, ..., 400-450ms, 450ms+
  })

  // Create a histogram for request payload sizes
  const payloadSizeHistogram = Metric.histogram("payload_size", {
    description: "Distribution of request payload sizes in KB",
    boundaries: Metric.exponentialBoundaries({ start: 1, factor: 2, count: 8 }),
    // Creates exponential buckets: 1KB, 2KB, 4KB, 8KB, 16KB, 32KB, 64KB, 128KB+
    attributes: { service: "api-gateway" }
  })

  // Create a histogram with custom boundaries
  const customHistogram = Metric.histogram("custom_metric", {
    description: "Custom distribution metric",
    boundaries: [0.1, 0.5, 1, 2.5, 5, 10, 25, 50, 100]
  })

  // Record various response times
  yield* Metric.update(responseTimeHistogram, 25) // Goes in 0-50ms bucket
  yield* Metric.update(responseTimeHistogram, 75) // Goes in 50-100ms bucket
  yield* Metric.update(responseTimeHistogram, 125) // Goes in 100-150ms bucket
  yield* Metric.update(responseTimeHistogram, 200) // Goes in 150-200ms bucket
  yield* Metric.update(responseTimeHistogram, 75) // Another 50-100ms

  // Record payload sizes
  yield* Metric.update(payloadSizeHistogram, 3) // Goes in 2-4KB bucket
  yield* Metric.update(payloadSizeHistogram, 15) // Goes in 8-16KB bucket
  yield* Metric.update(payloadSizeHistogram, 0.5) // Goes in 0-1KB bucket

  // Get histogram state with distribution data
  const responseTimeState = yield* Metric.value(responseTimeHistogram)
  const payloadSizeState = yield* Metric.value(payloadSizeHistogram)

  // responseTimeState will contain:
  // - buckets: [[50, 1], [100, 3], [150, 4], [200, 5], ...]
  // - count: 5, min: 25, max: 200, sum: 500
  // - Useful for calculating percentiles, averages, etc.

  return { responseTimeState, payloadSizeState }
})
```

**Signature**

```ts
declare const histogram: (name: string, options: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly boundaries: ReadonlyArray<number>; }) => Histogram<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2479)

Since v2.0.0