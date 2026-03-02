Package: `effect`<br />
Module: `Metric`<br />

## Metric.withConstantInput

Returns a new metric that is powered by this one, but which accepts updates
of any type, and translates them to updates with the specified constant
update value.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class MetricError extends Data.TaggedError("MetricError")<{
  readonly operation: string
}> {}

// Create a counter that normally expects a number increment
const requestCounter = Metric.counter("total_requests", {
  description: "Total number of requests processed"
})

// Create a version that always increments by 1, regardless of input
const simpleRequestCounter = Metric.withConstantInput(requestCounter, 1)

const program = Effect.gen(function*() {
  // These all increment the counter by 1, ignoring the input value
  yield* Metric.update(simpleRequestCounter, "any string")
  yield* Metric.update(simpleRequestCounter, { complex: "object" })
  yield* Metric.update(simpleRequestCounter, 999) // Still increments by 1

  const value = yield* Metric.value(simpleRequestCounter)
  return value // Counter state will show count: 3
})
```

**Signature**

```ts
declare const withConstantInput: { <Input>(input: Input): <State>(self: Metric<Input, State>) => Metric<unknown, State>; <Input, State>(self: Metric<Input, State>, input: Input): Metric<unknown, State>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2928)

Since v2.0.0