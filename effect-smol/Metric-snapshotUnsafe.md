Package: `effect`<br />
Module: `Metric`<br />

## Metric.snapshotUnsafe

Synchronously captures a snapshot of all registered metrics using the provided
service context.

This is the "unsafe" version that bypasses Effect's safety guarantees and requires
manual handling of the services context. Use the safe `snapshot` function for normal
application code.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class UnsafeSnapshotError extends Data.TaggedError("UnsafeSnapshotError")<{
  readonly operation: string
}> {}

// Use unsafeSnapshot in performance-critical scenarios or internal implementations
const performanceMetricsExporter = Effect.gen(function*() {
  // Create some metrics first
  const requestCounter = Metric.counter("http_requests", {
    description: "Total HTTP requests"
  })
  const responseTime = Metric.gauge("response_time_ms", {
    description: "Current response time"
  })

  // Update metrics
  yield* Metric.update(requestCounter, 1)
  yield* Metric.update(responseTime, 150)

  // Get services context for unsafe operations
  const services = yield* Effect.services()

  // Use snapshotUnsafe for direct, synchronous access
  const snapshots = Metric.snapshotUnsafe(services)

  // Process snapshots immediately (useful for exporters, debugging tools)
  const exportData = snapshots.map((snapshot) => ({
    name: snapshot.id,
    type: snapshot.type,
    value: snapshot.state,
    timestamp: Date.now()
  }))

  // This is synchronous and doesn't involve Effect overhead
  // Useful for performance-critical metric export operations
  return exportData
})

// For normal application use, prefer the safe snapshot function:
const safeSnapshotExample = Effect.gen(function*() {
  // This automatically handles the services context
  const snapshots = yield* Metric.snapshot
  return snapshots
})
```

**Signature**

```ts
declare const snapshotUnsafe: (services: ServiceMap.ServiceMap<never>) => ReadonlyArray<Metric.Snapshot>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3212)

Since v2.0.0