Package: `effect`<br />
Module: `Metric`<br />

## Metric.FiberRuntimeMetrics

`Context.Reference` for the optional fiber runtime metrics service.

**Details**
When provided, the runtime can notify the service about child-fiber start and
end events. When the reference is `undefined`, automatic fiber runtime metric
collection is disabled.

**Example** (Accessing the fiber runtime metrics service)

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
declare const FiberRuntimeMetrics: Context.Reference<FiberRuntimeMetricsService | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3624)

Since v4.0.0