Package: `effect`<br />
Module: `Metric`<br />

## Metric.counter

Represents a Counter metric that tracks cumulative numerical values over
time. Counters can be incremented and decremented and provide a running total
of changes.

**Details**

The optional `description` describes the counter, and `attributes` attach
dimensions to it. Set `bigint` to create a counter that accepts `bigint`
inputs. Set `incremental` to `true` to create a counter that can only ever be
incremented.

**Example** (Creating counter metrics)

```ts
import { Data, Effect, Metric } from "effect"

class CounterError extends Data.TaggedError("CounterError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create a basic counter for tracking requests
  const requestCounter = Metric.counter("http_requests_total", {
    description: "Total number of HTTP requests processed"
  })

  // Create an incremental-only counter for events
  const eventCounter = Metric.counter("events_processed", {
    description: "Events processed (increment only)",
    incremental: true
  })

  // Create a bigint counter for large values
  const bytesCounter = Metric.counter("bytes_transferred", {
    description: "Total bytes transferred",
    bigint: true,
    attributes: { service: "file-transfer" }
  })

  // Update counters with values
  yield* Metric.update(requestCounter, 1) // Increment by 1
  yield* Metric.update(requestCounter, 5) // Increment by 5 (total: 6)
  yield* Metric.update(eventCounter, 1) // Increment by 1
  yield* Metric.update(bytesCounter, 1024n) // Add 1024 bytes

  // Get current counter values
  const requestValue = yield* Metric.value(requestCounter)
  const eventValue = yield* Metric.value(eventCounter)
  const bytesValue = yield* Metric.value(bytesCounter)

  return { requestValue, eventValue, bytesValue }
})
```

**Signature**

```ts
declare const counter: { (name: string, options?: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly bigint?: false | undefined; readonly incremental?: boolean | undefined; }): Counter<number>; (name: string, options: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly bigint: true; readonly incremental?: boolean | undefined; }): Counter<bigint>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L2174)

Since v2.0.0