Package: `effect`<br />
Module: `Metric`<br />

## Metric.value

Retrieves the current state of the specified `Metric`.

**Details**

The returned state depends on the metric type:

- Counter: `CounterState<number | bigint>` with `count` and `incremental`
- Gauge: `GaugeState<number | bigint>` with `value`
- Frequency: `FrequencyState` with `occurrences`
- Histogram: `HistogramState` with buckets, count, min, max, and sum
- Summary: `SummaryState` with quantiles, count, min, max, and sum

**Example** (Reading metric state)

```ts
import { Effect, Metric } from "effect"

const requestCounter = Metric.counter("requests")
const responseTime = Metric.histogram("response_time", {
  boundaries: [100, 500, 1000, 2000]
})

const program = Effect.gen(function*() {
  // Update metrics
  yield* Metric.update(requestCounter, 1)
  yield* Metric.update(responseTime, 750)

  // Get current values
  const counterState = yield* Metric.value(requestCounter)
  console.log(`Request count: ${counterState.count}`)

  const histogramState = yield* Metric.value(responseTime)
  console.log(`Response time stats:`, {
    count: histogramState.count,
    min: histogramState.min,
    max: histogramState.max,
    average: histogramState.sum / histogramState.count
  })
})
```

**Signature**

```ts
declare const value: <Input, State>(self: Metric<Input, State>) => Effect<State>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2752)

Since v2.0.0