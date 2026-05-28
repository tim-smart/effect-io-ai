Package: `effect`<br />
Module: `Metric`<br />

## Metric.FiberRuntimeMetricsService

Interface for the fiber runtime metrics service that tracks fiber lifecycle events.

**Example** (Providing a custom fiber metrics service)

```ts
import { Data, Effect, Layer, Metric } from "effect"
import type { Context, Exit } from "effect"

class MetricsError extends Data.TaggedError("MetricsError")<{
  readonly operation: string
}> {}

// Custom implementation of the metrics service
const customMetricsService: Metric.FiberRuntimeMetricsService = {
  recordFiberStart: (context: Context.Context<never>) => {
    console.log("Fiber started")
    // Custom logic for tracking fiber starts
  },
  recordFiberEnd: (
    context: Context.Context<never>,
    exit: Exit.Exit<unknown, unknown>
  ) => {
    console.log("Fiber completed with exit:", exit)
    // Custom logic for tracking fiber completion based on exit status
  }
}

const program = Effect.gen(function*() {
  // Use the custom metrics service
  const layer = Layer.succeed(Metric.FiberRuntimeMetrics)(customMetricsService)

  return yield* Effect.sleep("100 millis").pipe(Effect.provide(layer))
})
```

**Signature**

```ts
export interface FiberRuntimeMetricsService {
  readonly recordFiberStart: (context: Context.Context<never>) => void
  readonly recordFiberEnd: (context: Context.Context<never>, exit: Exit<unknown, unknown>) => void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3641)

Since v4.0.0