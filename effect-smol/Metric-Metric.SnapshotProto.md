Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric.SnapshotProto

Protocol interface for metric snapshots containing metadata and current state.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class SnapshotProtoError extends Data.TaggedError("SnapshotProtoError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Create and update metrics
  const requestCounter = Metric.counter("requests", {
    description: "Request count",
    attributes: { service: "api" }
  })

  const responseTimeHistogram = Metric.histogram("response_time", {
    description: "Response time distribution",
    boundaries: Metric.linearBoundaries({ start: 0, width: 50, count: 10 })
  })

  yield* Metric.update(requestCounter, 25)
  yield* Metric.update(responseTimeHistogram, 150)
  yield* Metric.update(responseTimeHistogram, 75)

  // Take snapshot of all metrics
  const snapshots = yield* Metric.snapshot

  // Each snapshot follows the SnapshotProto interface:
  // - id: metric identifier
  // - type: specific metric type
  // - description: optional description
  // - attributes: optional attributes
  // - state: current metric state

  const counterSnapshot = snapshots.find((s) => s.id === "requests")
  const histogramSnapshot = snapshots.find((s) => s.id === "response_time")

  return {
    counter: counterSnapshot ?
      {
        id: counterSnapshot.id, // "requests"
        type: counterSnapshot.type, // "Counter"
        description: counterSnapshot.description, // "Request count"
        hasAttributes: counterSnapshot.attributes !== undefined, // true
        count: (counterSnapshot.state as any).count // 25
      } :
      null,
    histogram: histogramSnapshot ?
      {
        id: histogramSnapshot.id, // "response_time"
        type: histogramSnapshot.type, // "Histogram"
        observations: (histogramSnapshot.state as any).count // 2
      } :
      null
  }
})
```

**Signature**

```ts
export interface SnapshotProto<T extends Type, State> {
    readonly id: string
    readonly type: T
    readonly description: string | undefined
    readonly attributes: Metric.AttributeSet | undefined
    readonly state: State
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1596)

Since v4.0.0