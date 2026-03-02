Package: `effect`<br />
Module: `Metric`<br />

## Metric.enableRuntimeMetrics

Enables automatic collection of fiber runtime metrics for the provided Effect.

When enabled, automatically tracks fiber lifecycle metrics including active fibers,
started fibers, successful completions, and failures. These metrics provide valuable
insights into the concurrency patterns and health of your Effect application.

**Example**

```ts
import { Console, Data, Effect, Layer, Metric } from "effect"

class RuntimeMetricsError extends Data.TaggedError("RuntimeMetricsError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create a concurrent workload to demonstrate fiber metrics
  const heavyWorkload = Effect.gen(function*() {
    // Simulate concurrent operations
    const tasks = Array.from({ length: 10 }, (_, i) =>
      Effect.gen(function*() {
        yield* Effect.sleep(`${100 + i * 50} millis`)
        if (i % 4 === 0) {
          // Simulate some failures
          yield* Effect.fail(
            new RuntimeMetricsError({ operation: `task-${i}` })
          )
        }
        return `Task ${i} completed`
      }).pipe(
        Effect.catchTag("RuntimeMetricsError", () =>
          Effect.succeed(`Task ${i} failed`))
      ))

    // Run tasks concurrently
    const results = yield* Effect.all(tasks, { concurrency: 5 })
    return results
  })

  // Enable runtime metrics collection for our workload
  const workloadWithMetrics = Metric.enableRuntimeMetrics(heavyWorkload)

  // Execute the workload
  const results = yield* workloadWithMetrics

  // After execution, we can inspect the runtime metrics
  // The following metrics are automatically collected:
  // - child_fibers_active: Current number of active child fibers (Gauge)
  // - child_fibers_started: Total child fibers started (Counter, incremental)
  // - child_fiber_successes: Total successful child fibers (Counter, incremental)
  // - child_fiber_failures: Total failed child fibers (Counter, incremental)

  yield* Console.log(`Workload completed with ${results.length} results`)

  // Get all metrics including the runtime metrics
  const allMetrics = yield* Metric.snapshot
  const runtimeMetrics = allMetrics.filter((m) =>
    m.id.startsWith("child_fiber") || m.id.includes("fiber")
  )

  yield* Console.log("Runtime Metrics:")
  for (const metric of runtimeMetrics) {
    yield* Console.log(`  ${metric.id}: ${JSON.stringify(metric.state)}`)
  }

  return results
})

// Alternative: Use the layer version for broader application coverage
const BaseAppLayer = Layer.empty // Your base application layers
const AppLayerWithMetrics = BaseAppLayer.pipe(
  Layer.provide(Metric.enableRuntimeMetricsLayer)
)
const programWithLayer = program.pipe(
  Effect.provide(AppLayerWithMetrics)
)
```

**Signature**

```ts
declare const enableRuntimeMetrics: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3888)

Since v4.0.0