Package: `effect`<br />
Module: `Metric`<br />

## Metric.CounterState

State interface for Counter metrics containing the current count and increment mode.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class CounterStateError extends Data.TaggedError("CounterStateError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create different types of counters
  const requestCounter = Metric.counter("http_requests_total")
  const errorCounter = Metric.counter("errors_total", { incremental: true })
  const byteCounter = Metric.counter("bytes_processed", { bigint: true })

  // Update counters
  yield* Metric.update(requestCounter, 5) // Add 5 requests
  yield* Metric.update(requestCounter, -2) // Subtract 2 (allowed for non-incremental)
  yield* Metric.update(errorCounter, 3) // Add 3 errors
  yield* Metric.update(errorCounter, -1) // Attempt to subtract (ignored for incremental)
  yield* Metric.update(byteCounter, 1024000n) // Add bytes as bigint

  // Read counter states
  const requestState: Metric.CounterState<number> = yield* Metric.value(
    requestCounter
  )
  const errorState: Metric.CounterState<number> = yield* Metric.value(
    errorCounter
  )
  const byteState: Metric.CounterState<bigint> = yield* Metric.value(
    byteCounter
  )

  // CounterState contains:
  // - count: current count value (number or bigint based on counter type)
  // - incremental: whether counter only allows increases

  return {
    requests: {
      total: requestState.count, // 3 (5 - 2, decrements allowed)
      canDecrease: !requestState.incremental // true
    },
    errors: {
      total: errorState.count, // 3 (subtract ignored)
      canDecrease: !errorState.incremental // false
    },
    bytes: {
      total: byteState.count, // 1024000n
      canDecrease: !byteState.incremental // true
    }
  }
})
```

**Signature**

```ts
export interface CounterState<in Input extends number | bigint> {
  readonly count: Input extends bigint ? bigint : number
  readonly incremental: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L367)

Since v2.0.0