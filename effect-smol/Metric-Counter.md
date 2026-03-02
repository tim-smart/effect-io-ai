Package: `effect`<br />
Module: `Metric`<br />

## Metric.Counter

A Counter metric that tracks cumulative values that typically only increase.

Counters are useful for tracking monotonically increasing values like request counts,
bytes processed, errors encountered, or any value that accumulates over time.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class CounterInterfaceError extends Data.TaggedError("CounterInterfaceError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create different types of counters
  const requestCounter: Metric.Counter<number> = Metric.counter(
    "http_requests",
    {
      description: "Total HTTP requests processed",
      incremental: true // Only allows increments
    }
  )

  const bytesCounter: Metric.Counter<bigint> = Metric.counter(
    "bytes_processed",
    {
      description: "Total bytes processed",
      bigint: true,
      attributes: { service: "data-processor" }
    }
  )

  // Update counters
  yield* Metric.update(requestCounter, 1) // Increment by 1
  yield* Metric.update(requestCounter, 5) // Increment by 5 (total: 6)
  yield* Metric.update(bytesCounter, 1024n) // Add 1024 bytes

  // Read counter state
  const requestState: Metric.CounterState<number> = yield* Metric.value(
    requestCounter
  )
  const bytesState: Metric.CounterState<bigint> = yield* Metric.value(
    bytesCounter
  )

  // Counter state contains:
  // - count: current accumulated value
  // - incremental: whether only increments are allowed

  return {
    requests: {
      count: requestState.count,
      incremental: requestState.incremental
    },
    bytes: { count: bytesState.count, incremental: bytesState.incremental }
  }
})
```

**Signature**

```ts
export interface Counter<in Input extends number | bigint> extends Metric<Input, CounterState<Input>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L306)

Since v2.0.0