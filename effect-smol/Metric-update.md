Package: `effect`<br />
Module: `Metric`<br />

## Metric.update

Updates the metric with the specified input.

The behavior of `update` depends on the metric type:
- **Counter**: Adds the input value to the current count (same as `modify`)
- **Gauge**: Sets the gauge to the specified value (replaces current value)
- **Frequency**: Increments the occurrence count for the input string by 1
- **Histogram**: Records the input value in the appropriate bucket
- **Summary**: Records the input value as a new observation

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2816)

Since v2.0.0