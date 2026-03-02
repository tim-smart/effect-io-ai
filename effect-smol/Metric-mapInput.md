Package: `effect`<br />
Module: `Metric`<br />

## Metric.mapInput

Returns a new metric that is powered by this one, but which accepts updates
of the specified new type, which must be transformable to the input type of
this metric.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class MetricError extends Data.TaggedError("MetricError")<{
  readonly operation: string
}> {}

// Create a histogram that expects Duration values
const durationHistogram = Metric.histogram("request_duration_ms", {
  description: "Request duration in milliseconds",
  boundaries: Metric.linearBoundaries({ start: 0, width: 100, count: 10 })
})

// Transform to accept number values representing milliseconds
const numberHistogram = Metric.mapInput(
  durationHistogram,
  (ms: number) => ms // Direct mapping from number to expected input
)

const program = Effect.gen(function*() {
  // Now we can update with a plain number
  yield* Metric.update(numberHistogram, 250)

  // Get metric value to see the recorded state
  const value = yield* Metric.value(numberHistogram)
  return value
})
```

**Signature**

```ts
declare const mapInput: { <Input, Input2 extends Input>(f: (input: Input2, context: ServiceMap.ServiceMap<never>) => Input): <State>(self: Metric<Input, State>) => Metric<Input2, State>; <Input, State, Input2>(self: Metric<Input, State>, f: (input: Input2, context: ServiceMap.ServiceMap<never>) => Input): Metric<Input2, State>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2866)

Since v2.0.0