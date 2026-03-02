Package: `effect`<br />
Module: `Metric`<br />

## Metric.disableRuntimeMetrics

Disables automatic collection of fiber runtime metrics for the provided Effect.

This is useful when you want to selectively disable runtime metrics for specific
parts of your application while keeping them enabled elsewhere, or when you need
to avoid the overhead of metrics collection in performance-critical sections.

**Example**

```ts
import { Console, Data, Effect, Layer, Metric } from "effect"

class DisableMetricsError extends Data.TaggedError("DisableMetricsError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // This section will have runtime metrics enabled
  const normalOperation = Effect.gen(function*() {
    const tasks = Array.from({ length: 5 }, (_, i) =>
      Effect.gen(function*() {
        yield* Effect.sleep(`${100 + i * 20} millis`)
        return `Normal task ${i} completed`
      }))
    return yield* Effect.all(tasks, { concurrency: 3 })
  })

  // This section will have runtime metrics disabled for performance
  const highPerformanceOperation = Metric.disableRuntimeMetrics(
    Effect.gen(function*() {
      // Performance-critical code where metrics overhead should be avoided
      const hotPath = Array.from(
        { length: 1000 },
        (_, i) =>
          Effect.gen(function*() {
            // Simulate intensive computation
            const result = i * i + Math.random()
            return result
          })
      )
      return yield* Effect.all(hotPath, { concurrency: 100 })
    })
  )

  yield* Console.log("Running operations with selective metrics...")

  // Run both operations
  const [normalResults, performanceResults] = yield* Effect.all([
    normalOperation, // Will generate fiber metrics
    highPerformanceOperation // Will NOT generate fiber metrics
  ])

  // Check collected metrics - should only see metrics from normalOperation
  const metrics = yield* Metric.snapshot
  const runtimeMetrics = metrics.filter((m) => m.id.startsWith("child_fiber"))

  yield* Console.log(`Normal operation results: ${normalResults.length}`)
  yield* Console.log(
    `Performance operation results: ${performanceResults.length}`
  )
  yield* Console.log(`Runtime metrics collected: ${runtimeMetrics.length}`)

  // The runtime metrics will only reflect the fibers from normalOperation
  // The highPerformanceOperation fibers were not tracked due to disableRuntimeMetrics

  return { normalResults, performanceResults, runtimeMetrics }
})

// Enable runtime metrics globally, then selectively disable where needed
const BaseAppLayer = Layer.empty // Your base application layers
const AppLayerWithMetrics = BaseAppLayer.pipe(
  Layer.provide(Metric.enableRuntimeMetricsLayer)
)
const finalProgram = program.pipe(
  Effect.provide(AppLayerWithMetrics)
)
```

**Signature**

```ts
declare const disableRuntimeMetrics: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3973)

Since v4.0.0