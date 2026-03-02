Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric.Input

Utility type to extract the Input type from a Metric type.

**Example**

```ts
import { Metric } from "effect"

// Create various metric types
const numberCounter = Metric.counter("requests")
const bigintCounter = Metric.counter("bytes", { bigint: true })
const stringFrequency = Metric.frequency("status_codes")
const numberGauge = Metric.gauge("cpu_usage")
const numberHistogram = Metric.histogram("response_time", {
  boundaries: Metric.linearBoundaries({ start: 0, width: 50, count: 10 })
})

// The Input utility type extracts the input type from metric types:
// - Counter<number>: number
// - Counter<bigint>: bigint
// - Frequency: string
// - Gauge<number>: number
// - Histogram<number>: number

// Helper function that works with any metric
const createMetricInfo = (metric: Metric.Metric<any, any>) => ({
  id: metric.id,
  type: metric.type
})

const metrics = [
  createMetricInfo(numberCounter), // { id: "requests", type: "Counter" }
  createMetricInfo(bigintCounter), // { id: "bytes", type: "Counter" }
  createMetricInfo(stringFrequency), // { id: "status_codes", type: "Frequency" }
  createMetricInfo(numberGauge), // { id: "cpu_usage", type: "Gauge" }
  createMetricInfo(numberHistogram) // { id: "response_time", type: "Histogram" }
]

// Type safety is enforced at compile time:
// Metric.update(numberCounter, 123)     // ✓ Valid (number)
// Metric.update(numberCounter, "abc")   // ✗ Type error
// Metric.update(stringFrequency, "ok")  // ✓ Valid (string)
// Metric.update(stringFrequency, 404)   // ✗ Type error
```

**Signature**

```ts
type Input<A> = A extends Metric<infer _Input, infer _State> ? _Input
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1355)

Since v2.0.0