Package: `effect`<br />
Module: `Metric`<br />

## Metric.CurrentMetricAttributesKey

Service key for the current metric attributes context.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class AttributesKeyError extends Data.TaggedError("AttributesKeyError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // The key is used internally by the Effect runtime to manage metric attributes
  const key = Metric.CurrentMetricAttributesKey

  // Create metrics with base attributes
  const requestCounter = Metric.counter("requests_total", {
    description: "Total HTTP requests"
  })

  // The CurrentMetricAttributes service provides default attributes
  // that get applied to all metrics in the current context
  const baseAttributes = { service: "api", version: "1.0" }

  // Use withAttributes to apply attributes to metrics
  const taggedCounter1 = Metric.withAttributes(requestCounter, baseAttributes)
  const program1 = Metric.update(taggedCounter1, 1)

  const taggedCounter2 = Metric.withAttributes(requestCounter, {
    ...baseAttributes,
    endpoint: "/users"
  })
  const program2 = Metric.update(taggedCounter2, 5)

  yield* program1
  yield* program2

  return {
    keyValue: key, // "effect/Metric/CurrentMetricAttributes"
    keyType: typeof key, // "string"
    isConstant: key === "effect/Metric/CurrentMetricAttributes" // true
  }
})
```

**Signature**

```ts
declare const CurrentMetricAttributesKey: "effect/Metric/CurrentMetricAttributes"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1728)

Since v4.0.0