Package: `effect`<br />
Module: `Metric`<br />

## Metric.linearBoundaries

A helper method to create histogram bucket boundaries with linearly
increasing values.

Creates evenly-spaced boundaries starting from a base value and incrementing
by a fixed width. Automatically adds positive infinity as the final boundary.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class BoundaryError extends Data.TaggedError("BoundaryError")<{
  readonly operation: string
}> {}

// Create boundaries for response time histogram
// Buckets: 0-100ms, 100-200ms, 200-300ms, 300-400ms, 400ms+
const responseBoundaries = Metric.linearBoundaries({
  start: 0, // Starting point
  width: 100, // 100ms intervals
  count: 5 // Creates 4 boundaries + infinity
})
console.log(responseBoundaries) // [100, 200, 300, 400, Infinity]

// Create a histogram using these boundaries
const responseTimeHistogram = Metric.histogram("api_response_time", {
  description: "API response time distribution",
  boundaries: responseBoundaries
})

const program = Effect.gen(function*() {
  // Record some response times
  yield* Metric.update(responseTimeHistogram, 85) // Goes in 0-100ms bucket
  yield* Metric.update(responseTimeHistogram, 250) // Goes in 200-300ms bucket
  yield* Metric.update(responseTimeHistogram, 450) // Goes in 400ms+ bucket

  const value = yield* Metric.value(responseTimeHistogram)
  return value
})
```

**Signature**

```ts
declare const linearBoundaries: (options: { readonly start: number; readonly width: number; readonly count: number; }) => ReadonlyArray<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3393)

Since v2.0.0