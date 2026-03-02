Package: `effect`<br />
Module: `Metric`<br />

## Metric.snapshot

Captures a snapshot of all registered metrics in the current context.

Returns an array of metric snapshots, each containing the metric's metadata
(name, description, type) and current state (values, counts, etc.).

**Example**

```ts
import { Console, Data, Effect, Metric } from "effect"

class SnapshotError extends Data.TaggedError("SnapshotError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create and update some metrics
  const requestCounter = Metric.counter("http_requests", {
    description: "Total HTTP requests"
  })
  const responseTime = Metric.histogram("response_time_ms", {
    description: "Response time in milliseconds",
    boundaries: Metric.linearBoundaries({ start: 0, width: 100, count: 5 })
  })

  // Update the metrics with some values
  yield* Metric.update(requestCounter, 1)
  yield* Metric.update(requestCounter, 1)
  yield* Metric.update(responseTime, 150)
  yield* Metric.update(responseTime, 75)

  // Take a snapshot of all metrics
  const snapshots = yield* Metric.snapshot

  // Examine the snapshots
  for (const snapshot of snapshots) {
    yield* Console.log(`Metric: ${snapshot.id}`)
    yield* Console.log(`Description: ${snapshot.description}`)
    yield* Console.log(`Type: ${snapshot.type}`)
    yield* Console.log(`State:`, snapshot.state)
  }

  return snapshots
})
```

**Signature**

```ts
declare const snapshot: Effect<ReadonlyArray<Metric.Snapshot>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3058)

Since v2.0.0