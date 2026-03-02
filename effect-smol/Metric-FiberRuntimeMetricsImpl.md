Package: `effect`<br />
Module: `Metric`<br />

## Metric.FiberRuntimeMetricsImpl

Default implementation of the fiber runtime metrics service.

**Example**

```ts
import { Data, Effect, Layer, Metric } from "effect"

class MetricsError extends Data.TaggedError("MetricsError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Use the default metrics implementation
  const metrics = Metric.FiberRuntimeMetricsImpl
  console.log("Metrics implementation:", metrics)

  // Enable runtime metrics using the default implementation
  const layer = Layer.succeed(Metric.FiberRuntimeMetrics)(metrics)

  return yield* Effect.gen(function*() {
    // Run some Effects to trigger metric collection
    yield* Effect.forkChild(Effect.sleep("50 millis"))
    yield* Effect.forkChild(Effect.sleep("100 millis"))

    // Wait a bit and check the metrics
    yield* Effect.sleep("200 millis")

    // Create test metrics to demonstrate the implementation
    const testCounter = Metric.counter("test_counter")
    const testGauge = Metric.gauge("test_gauge")
    yield* Metric.update(testCounter, 3)
    yield* Metric.update(testGauge, 42)

    const counterValue = yield* Metric.value(testCounter)
    const gaugeValue = yield* Metric.value(testGauge)

    return { counter: counterValue, gauge: gaugeValue }
  }).pipe(Effect.provide(layer))
})
```

**Signature**

```ts
declare const FiberRuntimeMetricsImpl: FiberRuntimeMetricsService
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3653)

Since v4.0.0