Package: `effect`<br />
Module: `Metric`<br />

## Metric.exponentialBoundaries

A helper method to create histogram bucket boundaries with exponentially
increasing values.

Creates boundaries that grow exponentially, useful for metrics that span
multiple orders of magnitude. Each boundary is calculated as start * factor^i.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class BoundaryError extends Data.TaggedError("BoundaryError")<{
  readonly operation: string
}> {}

// Create exponential boundaries for request size histogram
// Buckets: 0-1KB, 1-2KB, 2-4KB, 4-8KB, 8KB+
const sizeBoundaries = Metric.exponentialBoundaries({
  start: 1, // Starting at 1KB
  factor: 2, // Each boundary doubles the previous
  count: 5 // Creates 4 boundaries + infinity
})
console.log(sizeBoundaries) // [1, 2, 4, 8, Infinity]

// Create a histogram for tracking request payload sizes
const requestSizeHistogram = Metric.histogram("request_size_kb", {
  description: "Request payload size distribution in KB",
  boundaries: sizeBoundaries
})

// For very wide ranges, use larger factors
const latencyBoundaries = Metric.exponentialBoundaries({
  start: 0.1, // Start at 0.1ms
  factor: 10, // Each boundary is 10x larger
  count: 6 // Creates ranges: 0.1ms, 1ms, 10ms, 100ms, 1000ms+
})

const program = Effect.gen(function*() {
  // Record different request sizes
  yield* Metric.update(requestSizeHistogram, 1.5) // Goes in 1-2KB bucket
  yield* Metric.update(requestSizeHistogram, 3.2) // Goes in 2-4KB bucket
  yield* Metric.update(requestSizeHistogram, 12) // Goes in 8KB+ bucket

  const value = yield* Metric.value(requestSizeHistogram)
  return value
})
```

**Signature**

```ts
declare const exponentialBoundaries: (options: { readonly start: number; readonly factor: number; readonly count: number; }) => ReadonlyArray<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3451)

Since v2.0.0