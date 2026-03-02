Package: `effect`<br />
Module: `Metric`<br />

## Metric.counter

Represents a Counter metric that tracks cumulative numerical values over
time. Counters can be incremented and decremented and provide a running total
of changes.

**Options**

- `description` - A description of the `Counter`.
- `attributes`  - The attributes to associate with the `Counter`.
- `bigint`      - Indicates if the `Counter` should use the `bigint` type.
- `incremental` - Set to `true` to create a `Counter` that can only ever be
                  incremented.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2231)

Since v2.0.0