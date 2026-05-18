Package: `effect`<br />
Module: `Metric`<br />

## Metric.CurrentMetricAttributes

`Context.Reference` for metric attributes applied from the current Effect
context.

**Details**
The default value is an empty attribute set. Metric reads and updates merge
these contextual attributes with the metric's own attributes to select the
metric series being accessed.

**Example** (Providing current metric attributes)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1740)

Since v4.0.0