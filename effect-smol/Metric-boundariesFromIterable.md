Package: `effect`<br />
Module: `Metric`<br />

## Metric.boundariesFromIterable

A helper method to create histogram bucket boundaries from an iterable set
of values.

Processes any iterable of numbers by removing duplicates, filtering out
non-positive values, and automatically appending positive infinity as the
final boundary.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class BoundaryError extends Data.TaggedError("BoundaryError")<{
  readonly operation: string
}> {}

// Create boundaries from an array of custom values
const customBoundaries = Metric.boundariesFromIterable([
  10,
  25,
  50,
  100,
  250,
  500,
  1000
])
console.log(customBoundaries) // [10, 25, 50, 100, 250, 500, 1000, Infinity]

// Automatically removes duplicates and negative values
const messyBoundaries = Metric.boundariesFromIterable([
  -5,
  0,
  10,
  10,
  25,
  25,
  50,
  -1
])
console.log(messyBoundaries) // [10, 25, 50, Infinity]

// Works with any iterable (Set, generator functions, etc.)
const setBoundaries = Metric.boundariesFromIterable(
  new Set([100, 200, 300, 200, 100])
)
console.log(setBoundaries) // [100, 200, 300, Infinity]

// Use with histogram metric
const responseTimeHistogram = Metric.histogram("response_times", {
  description: "API response time distribution",
  boundaries: customBoundaries
})

const program = Effect.gen(function*() {
  yield* Metric.update(responseTimeHistogram, 75) // Goes in 50-100ms bucket
  yield* Metric.update(responseTimeHistogram, 150) // Goes in 100-250ms bucket

  const value = yield* Metric.value(responseTimeHistogram)
  return value
})
```

**Signature**

```ts
declare const boundariesFromIterable: (iterable: Iterable<number>) => ReadonlyArray<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L3346)

Since v2.0.0