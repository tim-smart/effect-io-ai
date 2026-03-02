Package: `effect`<br />
Module: `Metric`<br />

## Metric.FiberRuntimeMetricsKey

Service key for the fiber runtime metrics service.

**Example**

```ts
import { Data, Effect, Layer, Metric } from "effect"

class MetricsError extends Data.TaggedError("MetricsError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // The key is used internally by the Effect runtime to manage fiber metrics
  const key = Metric.FiberRuntimeMetricsKey
  console.log("Fiber metrics key:", key)

  // Enable runtime metrics using the key
  const layer = Layer.succeed(Metric.FiberRuntimeMetrics)(
    Metric.FiberRuntimeMetricsImpl
  )

  return yield* Effect.gen(function*() {
    // This Effect will have fiber metrics automatically collected
    yield* Effect.sleep("100 millis")

    // Create a test counter to demonstrate the key usage
    const testCounter = Metric.counter("test_counter")
    yield* Metric.update(testCounter, 1)
    return yield* Metric.value(testCounter)
  }).pipe(Effect.provide(layer))
})
```

**Signature**

```ts
declare const FiberRuntimeMetricsKey: "effect/observability/Metric/FiberRuntimeMetricsKey"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3512)

Since v4.0.0