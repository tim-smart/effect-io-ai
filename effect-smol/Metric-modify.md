Package: `effect`<br />
Module: `Metric`<br />

## Metric.modify

Modifies the metric with the specified input.

The behavior of `modify` depends on the metric type:
- **Counter**: Adds the input value to the current count
- **Gauge**: Adds the input value to the current gauge value
- **Frequency**: Same as `update` - increments the occurrence count for the input string
- **Histogram**: Same as `update` - records the input value in the appropriate bucket
- **Summary**: Same as `update` - records the input observation

**Example**

```ts
import { Effect, Metric } from "effect"

const temperatureGauge = Metric.gauge("temperature")
const requestCounter = Metric.counter("requests")

const program = Effect.gen(function*() {
  // Set initial temperature
  yield* Metric.update(temperatureGauge, 20)

  // Modify by adding/subtracting values
  yield* Metric.modify(temperatureGauge, 5) // Now 25
  yield* Metric.modify(temperatureGauge, -3) // Now 22

  // For counters, modify increments by the specified amount
  yield* Metric.modify(requestCounter, 10) // Add 10 to counter
  yield* Metric.modify(requestCounter, 5) // Add 5 more (total: 15)

  const temp = yield* Metric.value(temperatureGauge)
  const requests = yield* Metric.value(requestCounter)

  console.log(`Temperature: ${temp.value}°C`) // 22°C
  console.log(`Requests: ${requests.count}`) // 15
})
```

**Signature**

```ts
declare const modify: { <Input>(input: Input): <State>(self: Metric<Input, State>) => Effect<void>; <Input, State>(self: Metric<Input, State>, input: Input): Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2755)

Since v2.0.0