Package: `effect`<br />
Module: `Metric`<br />

## Metric.Gauge

A Gauge metric that tracks instantaneous values that can go up or down.

Gauges are useful for tracking current state values like memory usage, CPU load,
active connections, queue sizes, or any value that represents a current level.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class GaugeInterfaceError extends Data.TaggedError("GaugeInterfaceError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create different types of gauges
  const memoryGauge: Metric.Gauge<number> = Metric.gauge("memory_usage_mb", {
    description: "Current memory usage in megabytes"
  })

  const diskSpaceGauge: Metric.Gauge<bigint> = Metric.gauge("disk_free_bytes", {
    description: "Available disk space in bytes",
    bigint: true,
    attributes: { mount: "/var" }
  })

  // Set gauge values (absolute values)
  yield* Metric.update(memoryGauge, 512) // Set to 512 MB
  yield* Metric.update(memoryGauge, 640) // Set to 640 MB (replaces 512)
  yield* Metric.update(diskSpaceGauge, 5000000000n) // Set to ~5GB free

  // Modify gauge values (relative changes)
  yield* Metric.modify(memoryGauge, 128) // Add 128 MB (total: 768)
  yield* Metric.modify(memoryGauge, -64) // Subtract 64 MB (total: 704)

  // Read gauge state
  const memoryState: Metric.GaugeState<number> = yield* Metric.value(
    memoryGauge
  )
  const diskState: Metric.GaugeState<bigint> = yield* Metric.value(
    diskSpaceGauge
  )

  // Gauge state contains:
  // - value: current instantaneous value

  return {
    memory: { currentValue: memoryState.value }, // 704
    disk: { currentValue: diskState.value } // 5000000000n
  }
})
```

**Signature**

```ts
export interface Gauge<in Input extends number | bigint> extends Metric<Input, GaugeState<Input>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L596)

Since v2.0.0