Package: `effect`<br />
Module: `Metric`<br />

## Metric.dump

Returns a human-readable string representation of all currently registered
metrics in a tabular format.

This debugging utility captures a snapshot of all metrics and formats them
in an easy-to-read table showing names, descriptions, types, attributes,
and current state values.

**Example**

```ts
import { Console, Data, Effect, Metric } from "effect"

class DumpError extends Data.TaggedError("DumpError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create and update some metrics for demonstration
  const requestCounter = Metric.counter("http_requests_total", {
    description: "Total HTTP requests"
  })
  const responseTime = Metric.gauge("response_time_ms", {
    description: "Current response time in milliseconds"
  })
  const statusFreq = Metric.frequency("http_status_codes", {
    description: "Frequency of HTTP status codes"
  })

  // Update metrics with some values
  yield* Metric.update(requestCounter, 1)
  yield* Metric.update(requestCounter, 1)
  yield* Metric.update(responseTime, 125)
  yield* Metric.update(statusFreq, "200")
  yield* Metric.update(statusFreq, "404")
  yield* Metric.update(statusFreq, "200")

  // Get formatted dump of all metrics
  const metricsReport = yield* Metric.dump
  yield* Console.log("Current Metrics:")
  yield* Console.log(metricsReport)

  // Output will look like a formatted table:
  // Name                  Description                           Type       State
  // http_requests_total   Total HTTP requests                   Counter    [count: 2]
  // response_time_ms      Current response time in milliseconds Gauge      [value: 125]
  // http_status_codes     Frequency of HTTP status codes       Frequency  [occurrences: 200 -> 2, 404 -> 1]

  return metricsReport
})
```

**Signature**

```ts
declare const dump: Effect<string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3117)

Since v2.0.0