Package: `effect`<br />
Module: `Metric`<br />

## Metric.FiberRuntimeMetrics

Service class for managing fiber runtime metrics collection.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class MetricsError extends Data.TaggedError("MetricsError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Access the fiber runtime metrics service
  const metricsService = yield* Metric.FiberRuntimeMetrics

  if (metricsService) {
    console.log("Runtime metrics are enabled")
  } else {
    console.log("Runtime metrics are disabled")
  }

  // Enable runtime metrics for the application
  const enabledLayer = Metric.enableRuntimeMetricsLayer

  return yield* Effect.gen(function*() {
    // Create some concurrent fibers to see metrics in action
    yield* Effect.all([
      Effect.sleep("100 millis"),
      Effect.sleep("200 millis"),
      Effect.sleep("300 millis")
    ], { concurrency: "unbounded" })

    // Create test metrics to demonstrate the service
    const testCounter = Metric.counter("test_counter")
    yield* Metric.update(testCounter, 5)
    const counterValue = yield* Metric.value(testCounter)

    return { counterValue, metricsEnabled: true }
  }).pipe(Effect.provide(enabledLayer))
})
```

**Signature**

```ts
declare const FiberRuntimeMetrics: ServiceMap.Reference<FiberRuntimeMetricsService | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3604)

Since v4.0.0