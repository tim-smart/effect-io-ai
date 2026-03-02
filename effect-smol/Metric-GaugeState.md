Package: `effect`<br />
Module: `Metric`<br />

## Metric.GaugeState

State interface for Gauge metrics containing the current instantaneous value.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class GaugeStateError extends Data.TaggedError("GaugeStateError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create different types of gauges
  const temperatureGauge = Metric.gauge("room_temperature_celsius", {
    description: "Current room temperature"
  })

  const diskSpaceGauge = Metric.gauge("disk_usage_bytes", {
    description: "Current disk usage",
    bigint: true
  })

  const queueSizeGauge = Metric.gauge("queue_size", {
    description: "Current queue size"
  })

  // Set gauge values (absolute values)
  yield* Metric.update(temperatureGauge, 22.5) // Set to 22.5°C
  yield* Metric.update(diskSpaceGauge, 5000000000n) // Set to 5GB usage
  yield* Metric.update(queueSizeGauge, 10) // Set to 10 items

  // Update gauge values (new absolute values)
  yield* Metric.update(temperatureGauge, 23.1) // Temperature changed
  yield* Metric.update(queueSizeGauge, 15) // Queue grew

  // Read gauge states
  const tempState: Metric.GaugeState<number> = yield* Metric.value(
    temperatureGauge
  )
  const diskState: Metric.GaugeState<bigint> = yield* Metric.value(
    diskSpaceGauge
  )
  const queueState: Metric.GaugeState<number> = yield* Metric.value(
    queueSizeGauge
  )

  // GaugeState contains:
  // - value: current instantaneous value (number or bigint based on gauge type)

  return {
    environment: {
      temperature: tempState.value, // 23.1
      temperatureUnit: "°C"
    },
    system: {
      diskUsage: diskState.value, // 5000000000n
      diskUsageGB: Number(diskState.value) / 1_000_000_000, // 5
      queueSize: queueState.value // 15
    }
  }
})
```

**Signature**

```ts
export interface GaugeState<in Input extends number | bigint> {
  readonly value: Input extends bigint ? bigint : number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L664)

Since v2.0.0