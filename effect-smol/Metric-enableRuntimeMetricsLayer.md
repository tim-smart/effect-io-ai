Package: `effect`<br />
Module: `Metric`<br />

## Metric.enableRuntimeMetricsLayer

A Layer that enables automatic collection of fiber runtime metrics across
an entire Effect application.

Unlike the function version which wraps individual Effects, this layer provides
runtime metrics collection to all Effects in the application context. This is
the recommended approach for production applications that need comprehensive
fiber monitoring.

**Example**

```ts
import { Console, Data, Effect, Layer, Metric } from "effect"

class AppError extends Data.TaggedError("AppError")<{
  readonly operation: string
}> {}

// Define your application logic
const userService = Effect.gen(function*() {
  // Simulate user operations with concurrent processing
  const fetchUser = (id: number) =>
    Effect.gen(function*() {
      yield* Effect.sleep(`${50 + id * 10} millis`)
      if (id % 7 === 0) {
        yield* Effect.fail(new AppError({ operation: `fetch-user-${id}` }))
      }
      return { id, name: `User ${id}`, email: `user${id}@example.com` }
    })

  // Process multiple users concurrently (ignoring failures for demo)
  const userIds = Array.from({ length: 10 }, (_, i) => i + 1)
  const userTasks = userIds.map((id) =>
    fetchUser(id).pipe(Effect.catchTag("AppError", () => Effect.succeed(null)))
  )
  const allUsers = yield* Effect.all(userTasks, { concurrency: 4 })
  const successfulUsers = allUsers.filter((user) => user !== null)
  return successfulUsers
})

const analyticsService = Effect.gen(function*() {
  // Simulate analytics processing
  const tasks = Array.from({ length: 8 }, (_, i) =>
    Effect.gen(function*() {
      yield* Effect.sleep(`${100 + i * 25} millis`)
      return `Analytics task ${i} completed`
    }))
  return yield* Effect.all(tasks, { concurrency: 3 })
})

// Main application that uses multiple services
const application = Effect.gen(function*() {
  yield* Console.log("Starting application with runtime metrics...")

  // Run services concurrently
  const [users, analytics] = yield* Effect.all([
    userService,
    analyticsService
  ], { concurrency: 2 })

  yield* Console.log(
    `Processed ${users.length} users and ${analytics.length} analytics tasks`
  )

  // Inspect the automatically collected runtime metrics
  const metrics = yield* Metric.snapshot
  const runtimeMetrics = metrics.filter((m) => m.id.startsWith("child_fiber"))

  yield* Console.log("Runtime Metrics Collected:")
  for (const metric of runtimeMetrics) {
    yield* Console.log(`  ${metric.id}: ${JSON.stringify(metric.state)}`)
  }

  return { users, analytics, metricsCount: runtimeMetrics.length }
})

// Create the base application layer
const AppLayer = Layer.empty // Add your application layers here (database, HTTP, etc.)

// Add runtime metrics layer at the end
const AppLayerWithMetrics = AppLayer.pipe(
  Layer.provide(Metric.enableRuntimeMetricsLayer)
)

// Run the application with runtime metrics enabled
const program = application.pipe(
  Effect.provide(AppLayerWithMetrics)
)

// Alternative: Provide runtime metrics directly to the application
const programWithDirectMetrics = application.pipe(
  Effect.provide(Metric.enableRuntimeMetricsLayer)
)
```

**Signature**

```ts
declare const enableRuntimeMetricsLayer: Layer.Layer<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3765)

Since v4.0.0