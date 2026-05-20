Package: `effect`<br />
Module: `Metric`<br />

## Metric.linearBoundaries

Creates histogram bucket boundaries from a linear sequence and appends
positive infinity.

**Details**

Generates `count - 1` finite boundaries using `start + width + index` for
each zero-based index, then applies the same normalization as
`boundariesFromIterable`: non-positive values are removed, duplicates are
collapsed, and `Infinity` is appended.

**Example** (Creating linear boundaries)

```ts
import { Data, Effect, Metric } from "effect"

class BoundaryError extends Data.TaggedError("BoundaryError")<{
  readonly operation: string
}> {}

// Create boundaries for response time histogram
const responseBoundaries = Metric.linearBoundaries({
  start: 0, // Starting point
  width: 100, // Offset used for the first boundary
  count: 5 // Creates 4 boundaries + infinity
})
console.log(responseBoundaries) // [100, 101, 102, 103, Infinity]

// Create a histogram using these boundaries
const responseTimeHistogram = Metric.histogram("api_response_time", {
  description: "API response time distribution",
  boundaries: responseBoundaries
})

const program = Effect.gen(function*() {
  // Record some response times
  yield* Metric.update(responseTimeHistogram, 85)
  yield* Metric.update(responseTimeHistogram, 101)
  yield* Metric.update(responseTimeHistogram, 450)

  const value = yield* Metric.value(responseTimeHistogram)
  return value
})
```

**Signature**

```ts
declare const linearBoundaries: (options: { readonly start: number; readonly width: number; readonly count: number; }) => ReadonlyArray<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3453)

Since v4.0.0