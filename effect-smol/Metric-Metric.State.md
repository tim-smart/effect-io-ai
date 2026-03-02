Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric.State

Utility type to extract the State type from a Metric type.

**Example**

```ts
import { Effect, Metric } from "effect"

// Create various metric types
const requestCounter = Metric.counter("requests")
const cpuGauge = Metric.gauge("cpu_usage")
const statusFrequency = Metric.frequency("status_codes")
const responseHistogram = Metric.histogram("response_time", {
  boundaries: Metric.linearBoundaries({ start: 0, width: 50, count: 10 })
})
const latencySummary = Metric.summary("latency", {
  maxAge: "5 minutes",
  maxSize: 1000,
  quantiles: [0.5, 0.95, 0.99]
})

// The State utility type extracts the state type from metric types:
// - Counter<number>: CounterState<number>
// - Gauge<number>: GaugeState<number>
// - Frequency: FrequencyState
// - Histogram<number>: HistogramState
// - Summary<number>: SummaryState

// Type-safe state analysis functions
const program = Effect.gen(function*() {
  // Update metrics first
  yield* Metric.update(requestCounter, 10)
  yield* Metric.update(cpuGauge, 85.5)
  yield* Metric.update(statusFrequency, "200")
  yield* Metric.update(responseHistogram, 150)
  yield* Metric.update(latencySummary, 120)

  // Extract states with proper typing
  const counterState = yield* Metric.value(requestCounter)
  const gaugeState = yield* Metric.value(cpuGauge)
  const frequencyState = yield* Metric.value(statusFrequency)
  const histogramState = yield* Metric.value(responseHistogram)
  const summaryState = yield* Metric.value(latencySummary)

  return {
    counter: { count: counterState.count }, // { count: 10 }
    gauge: { value: gaugeState.value }, // { value: 85.5 }
    frequency: { uniqueValues: frequencyState.occurrences.size }, // { uniqueValues: 1 }
    histogram: { totalObservations: histogramState.count }, // { totalObservations: 1 }
    summary: { observations: summaryState.count } // { observations: 1 }
  }
})
```

**Signature**

```ts
type State<A> = A extends Metric<infer _Input, infer _State> ? _State
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1414)

Since v2.0.0