Package: `effect`<br />
Module: `Metric`<br />

## Metric.timer

Creates a timer metric, based on a `Histogram`, which keeps track of
durations in milliseconds.

**Details**

The unit of time will automatically be added to the metric as a tag (i.e.
`"time_unit: milliseconds"`).

If `options.boundaries` is not provided, the boundaries will be computed
using `Metric.exponentialBoundaries({ start: 0.5, factor: 2, count: 35 })`.

**Example** (Recording durations with a timer)

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

// Record a measured API operation duration
const apiOperation = Effect.gen(function*() {
  const duration = Duration.millis(120)
  yield* Metric.update(apiRequestTimer, duration)

  const state = yield* Metric.value(apiRequestTimer)
  console.log({
    count: state.count,
    min: state.min,
    max: state.max,
    sum: state.sum
  }) // { count: 1, min: 120, max: 120, sum: 120 }
})
```

**Signature**

```ts
declare const timer: (name: string, options?: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly boundaries?: ReadonlyArray<number>; }) => Histogram<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2622)

Since v2.0.0