Package: `effect`<br />
Module: `Metric`<br />

## Metric.disableRuntimeMetricsLayer

A Layer that disables automatic collection of fiber runtime metrics.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class MetricsError extends Data.TaggedError("MetricsError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Disable runtime metrics collection
  const disabledLayer = Metric.disableRuntimeMetricsLayer

  return yield* Effect.gen(function*() {
    // Check that metrics service is disabled
    const metricsService = yield* Metric.FiberRuntimeMetrics
    console.log("Metrics enabled:", metricsService !== undefined) // false

    // Run some Effects - no metrics will be collected
    yield* Effect.forkChild(Effect.sleep("50 millis"))
    yield* Effect.forkChild(Effect.sleep("100 millis"))
    yield* Effect.sleep("200 millis")

    // Create test metrics to show they still work
    const testCounter = Metric.counter("test_counter")
    yield* Metric.update(testCounter, 1)
    const counterValue = yield* Metric.value(testCounter)

    return { counterValue, metricsEnabled: metricsService !== undefined }
  }).pipe(Effect.provide(disabledLayer))
})
```

**Signature**

```ts
declare const disableRuntimeMetricsLayer: Layer.Layer<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3805)

Since v4.0.0