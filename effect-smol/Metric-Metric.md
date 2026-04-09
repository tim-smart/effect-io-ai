Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric

A `Metric<Input, State>` represents a concurrent metric which accepts update
values of type `Input` and are aggregated to a value of type `State`.

For example, a counter metric would have type `Metric<number, number>`,
representing the fact that the metric can be updated with numbers (the amount
to increment or decrement the counter by), and the state of the counter is a
number.

There are five primitive metric types supported by Effect:

  - Counters
  - Frequencies
  - Gauges
  - Histograms
  - Summaries

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class MetricExample extends Data.TaggedError("MetricExample")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create different types of metrics
  const requestCounter: Metric.Counter<number> = Metric.counter("requests", {
    description: "Total requests processed"
  })

  const memoryGauge: Metric.Gauge<number> = Metric.gauge("memory_usage", {
    description: "Current memory usage in MB"
  })

  const statusFrequency: Metric.Frequency = Metric.frequency("status_codes", {
    description: "HTTP status code frequency"
  })

  // All metrics share the same interface for updates and reads
  yield* Metric.update(requestCounter, 1)
  yield* Metric.update(memoryGauge, 128)
  yield* Metric.update(statusFrequency, "200")

  // All metrics can be read with Metric.value
  const counterState = yield* Metric.value(requestCounter)
  const gaugeState = yield* Metric.value(memoryGauge)
  const frequencyState = yield* Metric.value(statusFrequency)

  // Metrics have common properties accessible through the interface:
  // - id: unique identifier
  // - type: metric type ("Counter", "Gauge", "Frequency", etc.)
  // - description: optional human-readable description
  // - attributes: optional key-value attributes for tagging

  return {
    counter: {
      id: requestCounter.id,
      type: requestCounter.type,
      state: counterState
    },
    gauge: { id: memoryGauge.id, type: memoryGauge.type, state: gaugeState },
    frequency: {
      id: statusFrequency.id,
      type: statusFrequency.type,
      state: frequencyState
    }
  }
})
```

**Signature**

```ts
export interface Metric<in Input, out State> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly Input: Contravariant<Input>
  readonly State: Covariant<State>
  readonly id: string
  readonly type: Metric.Type
  readonly description: string | undefined
  readonly attributes: Metric.AttributeSet | undefined
  readonly valueUnsafe: (context: Context.Context<never>) => State
  readonly updateUnsafe: (input: Input, context: Context.Context<never>) => void
  readonly modifyUnsafe: (input: Input, context: Context.Context<never>) => void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L230)

Since v2.0.0