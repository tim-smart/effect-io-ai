Package: `effect`<br />
Module: `Metric`<br />

## Metric.value

Retrieves the current state of the specified `Metric`.

This function returns an Effect that, when executed, will provide the current
aggregated state of the metric. The state type depends on the metric type:
- Counter: `{ count: number | bigint }`
- Gauge: `{ value: number | bigint }`
- Frequency: `{ occurrences: Map<string, number> }`
- Histogram: `{ buckets: Array<[number, number]>, count: number, min: number, max: number, sum: number }`
- Summary: `{ quantiles: Array<[number, number | undefined]>, count: number, min: number, max: number, sum: number }`

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2707)

Since v2.0.0