Package: `effect`<br />
Module: `Metric`<br />

## Metric.CurrentMetricAttributes

Service class for managing the current metric attributes context.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class AttributesError extends Data.TaggedError("AttributesError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Access current metric attributes
  const attributes = yield* Metric.CurrentMetricAttributes
  console.log("Current attributes:", attributes)

  // Set new attributes context
  const newAttributes = { service: "api", version: "1.0" }
  const result = yield* Effect.provideService(
    Effect.gen(function*() {
      const updatedAttributes = yield* Metric.CurrentMetricAttributes
      return updatedAttributes
    }),
    Metric.CurrentMetricAttributes,
    newAttributes
  )

  return result
})
```

**Signature**

```ts
declare const CurrentMetricAttributes: Context.Reference<Readonly<Record<string, string>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1764)

Since v4.0.0