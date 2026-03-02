Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric.Metadata

Interface containing complete metadata information about a metric.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class MetadataError extends Data.TaggedError("MetadataError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create metrics with different configurations
  const requestCounter = Metric.counter("http_requests_total", {
    description: "Total number of HTTP requests",
    attributes: { service: "api", version: "1.0" }
  })

  const memoryGauge = Metric.gauge("memory_usage_bytes", {
    description: "Current memory usage in bytes"
  })

  const statusFrequency = Metric.frequency("http_status_codes")

  // The Metadata interface contains complete information about a metric:
  // - id: metric identifier
  // - type: metric type ("Counter", "Gauge", etc.)
  // - description: optional description
  // - attributes: optional key-value attributes
  // - hooks: low-level operations interface

  // Each metric has associated metadata that can be inspected
  yield* Metric.update(requestCounter, 10)
  yield* Metric.update(memoryGauge, 256000000)
  yield* Metric.update(statusFrequency, "200")

  return {
    counter: {
      id: requestCounter.id, // "http_requests_total"
      type: requestCounter.type, // "Counter"
      description: requestCounter.description // "Total number of HTTP requests"
    },
    gauge: {
      id: memoryGauge.id, // "memory_usage_bytes"
      type: memoryGauge.type, // "Gauge"
      description: memoryGauge.description // "Current memory usage in bytes"
    },
    frequency: {
      id: statusFrequency.id, // "http_status_codes"
      type: statusFrequency.type, // "Frequency"
      description: statusFrequency.description // undefined
    }
  }
})
```

**Signature**

```ts
export interface Metadata<in Input, out State> {
    readonly id: string
    readonly type: Type
    readonly description: string | undefined
    readonly attributes: Metric.AttributeSet | undefined
    readonly hooks: Hooks<Input, State>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1524)

Since v4.0.0