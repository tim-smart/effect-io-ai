Package: `effect`<br />
Module: `Metric`<br />

## Metric.timer

Creates a timer metric, based on a `Histogram`, which keeps track of
durations in milliseconds.

The unit of time will automatically be added to the metric as a tag (i.e.
`"time_unit: milliseconds"`).

If `options.boundaries` is not provided, the boundaries will be computed
using `Metric.exponentialBoundaries({ start: 0.5, factor: 2, count: 35 })`.

**Example**

```ts
import { Data, Duration, Effect, Metric } from "effect"

class TimerError extends Data.TaggedError("TimerError")<{
  readonly operation: string
}> {}

// Create a timer metric to track API request durations
const apiRequestTimer = Metric.timer("api_request_duration", {
  description: "Duration of API requests",
  attributes: { service: "user-api" }
})

// Simulate an API operation and measure its duration
const apiOperation = Effect.gen(function*() {
  const start = Date.now()
  yield* Effect.sleep(Duration.millis(100)) // Simulate work
  const duration = Duration.millis(Date.now() - start)

  // Update the timer with the measured duration
  yield* Metric.update(apiRequestTimer, duration)
})
```

**Signature**

```ts
declare const timer: (name: string, options?: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly boundaries?: ReadonlyArray<number>; }) => Histogram<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2652)

Since v2.0.0