Package: `effect`<br />
Module: `Metric`<br />

## Metric.gauge

Represents a `Gauge` metric that tracks and reports a single numerical value
at a specific moment.

Gauges are most suitable for metrics that represent instantaneous values,
such as memory usage or CPU load.

**Options**

- `description` - A description of the `Gauge`.
- `attributes`  - The attributes to associate with the `Gauge`.
- `bigint`      - Indicates if the `Gauge` should use the `bigint` type.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class GaugeError extends Data.TaggedError("GaugeError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create a gauge for tracking memory usage
  const memoryGauge = Metric.gauge("memory_usage_mb", {
    description: "Current memory usage in megabytes"
  })

  // Create a gauge for CPU utilization
  const cpuGauge = Metric.gauge("cpu_utilization", {
    description: "Current CPU utilization percentage",
    attributes: { host: "server-01" }
  })

  // Create a bigint gauge for large values
  const diskSpaceGauge = Metric.gauge("disk_free_bytes", {
    description: "Free disk space in bytes",
    bigint: true
  })

  // Set gauge values (replaces current value)
  yield* Metric.update(memoryGauge, 512) // Set to 512 MB
  yield* Metric.update(cpuGauge, 85.5) // Set to 85.5%
  yield* Metric.update(diskSpaceGauge, 1024000000n) // Set to ~1GB

  // Modify gauge values (adds to current value)
  yield* Metric.modify(memoryGauge, 128) // Increase by 128 MB (total: 640)
  yield* Metric.modify(cpuGauge, -10.5) // Decrease by 10.5% (total: 75%)

  // Update with new absolute values
  yield* Metric.update(memoryGauge, 800) // Set to 800 MB (replaces 640)

  // Get current gauge values
  const memoryValue = yield* Metric.value(memoryGauge)
  const cpuValue = yield* Metric.value(cpuGauge)
  const diskValue = yield* Metric.value(diskSpaceGauge)

  return { memoryValue, cpuValue, diskValue }
})
```

**Signature**

```ts
declare const gauge: { (name: string, options?: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly bigint?: false | undefined; }): Gauge<number>; (name: string, options: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly bigint: true; }): Gauge<bigint>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2315)

Since v2.0.0