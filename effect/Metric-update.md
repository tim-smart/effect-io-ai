Package: `effect`<br />
Module: `Metric`<br />

## Metric.update

Updates the metric with the specified input.

**Details**

The behavior of `update` depends on the metric type. Counters add the input
value to the current count, gauges replace the current value with the input
value, frequencies increment the occurrence count for the input string,
histograms record the input value in the appropriate bucket, and summaries
record the input value as a new observation.

**Example** (Updating metric values)

```ts
import { Effect, Metric } from "effect"

const cpuUsage = Metric.gauge("cpu_usage_percent")
const httpStatus = Metric.frequency("http_status_codes")
const responseTime = Metric.histogram("response_time_ms", {
  boundaries: [100, 500, 1000, 2000]
})

const program = Effect.gen(function*() {
  // Update gauge to specific values
  yield* Metric.update(cpuUsage, 45.2)
  yield* Metric.update(cpuUsage, 67.8) // Replaces previous value

  // Track HTTP status code occurrences
  yield* Metric.update(httpStatus, "200")
  yield* Metric.update(httpStatus, "404")
  yield* Metric.update(httpStatus, "200") // Increments 200 count

  // Record response times
  yield* Metric.update(responseTime, 250)
  yield* Metric.update(responseTime, 750)
  yield* Metric.update(responseTime, 1500)

  // Check current states
  const cpu = yield* Metric.value(cpuUsage)
  const statuses = yield* Metric.value(httpStatus)
  const times = yield* Metric.value(responseTime)

  console.log(`CPU Usage: ${cpu.value}%`)
  console.log(`Status 200 count: ${statuses.occurrences.get("200")}`) // 2
  console.log(`Response time samples: ${times.count}`) // 3
})
```

**Signature**

```ts
declare const update: { <Input>(input: Input): <State>(self: Metric<Input, State>) => Effect<void>; <Input, State>(self: Metric<Input, State>, input: Input): Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L2792)

Since v2.0.0