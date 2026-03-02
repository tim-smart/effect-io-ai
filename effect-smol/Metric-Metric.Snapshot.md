Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric.Snapshot

Union type representing all possible metric snapshot types with their corresponding states.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class SnapshotError extends Data.TaggedError("SnapshotError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create different types of metrics
  const requestCounter = Metric.counter("requests_total")
  const cpuGauge = Metric.gauge("cpu_usage_percent")
  const statusFrequency = Metric.frequency("http_status")
  const responseHistogram = Metric.histogram("response_time_ms", {
    boundaries: Metric.linearBoundaries({ start: 0, width: 100, count: 10 })
  })
  const latencySummary = Metric.summary("request_latency", {
    maxAge: "1 minute",
    maxSize: 100,
    quantiles: [0.5, 0.95, 0.99]
  })

  // Update all metrics
  yield* Metric.update(requestCounter, 150)
  yield* Metric.update(cpuGauge, 45.7)
  yield* Metric.update(statusFrequency, "200")
  yield* Metric.update(statusFrequency, "404")
  yield* Metric.update(responseHistogram, 250)
  yield* Metric.update(latencySummary, 120)

  // Take snapshot of all metrics
  const allSnapshots = yield* Metric.snapshot

  // Type-safe snapshot analysis using discriminated union
  const analyzeSnapshot = (snapshot: any) => {
    switch (snapshot.type) {
      case "Counter":
        return { type: "Counter", count: snapshot.state.count }
      case "Gauge":
        return { type: "Gauge", value: snapshot.state.value }
      case "Frequency":
        return {
          type: "Frequency",
          uniqueValues: snapshot.state.occurrences.size
        }
      case "Histogram":
        return { type: "Histogram", observations: snapshot.state.count }
      case "Summary":
        return { type: "Summary", observations: snapshot.state.count }
    }
  }

  const analysis = allSnapshots.map(analyzeSnapshot)

  return {
    totalMetrics: allSnapshots.length, // 5
    metricTypes: allSnapshots.map((s) => s.type), // ["Counter", "Gauge", "Frequency", "Histogram", "Summary"]
    analysis
  }
})
```

**Signature**

```ts
type Snapshot = | SnapshotProto<"Counter", CounterState<number | bigint>>
    | SnapshotProto<"Gauge", GaugeState<number | bigint>>
    | SnapshotProto<"Frequency", FrequencyState>
    | SnapshotProto<"Histogram", HistogramState>
    | SnapshotProto<"Summary", SummaryState>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1672)

Since v4.0.0