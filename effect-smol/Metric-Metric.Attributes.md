Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric.Attributes

Union type for metric attributes that can be provided as either an object or array of tuples.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class AttributesError extends Data.TaggedError("AttributesError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Different ways to specify attributes
  const attributesAsObject = {
    service: "api",
    environment: "production",
    version: "1.2.3"
  }

  const attributesAsArray: ReadonlyArray<[string, string]> = [
    ["service", "api"],
    ["environment", "production"],
    ["version", "1.2.3"]
  ]

  // Create metrics with different attribute formats
  const requestCounter1 = Metric.counter("requests", {
    description: "Total requests",
    attributes: attributesAsObject // Using object format
  })

  const requestCounter2 = Metric.counter("requests", {
    description: "Total requests",
    attributes: attributesAsArray // Using array format
  })

  // Function to normalize attributes to object format
  const normalizeAttributes = (
    attrs: typeof attributesAsObject | ReadonlyArray<[string, string]>
  ) => {
    if (Array.isArray(attrs)) {
      return Object.fromEntries(attrs)
    }
    return attrs
  }

  // Add runtime attributes using withAttributes
  const contextualCounter = Metric.withAttributes(requestCounter1, {
    method: "GET",
    endpoint: "/api/users"
  })

  // Update metrics with different attribute combinations
  yield* Metric.update(contextualCounter, 1)

  // Both formats result in the same internal representation
  const normalizedObject = normalizeAttributes(attributesAsObject)
  const normalizedArray = normalizeAttributes(attributesAsArray)

  return {
    attributeFormats: {
      object: normalizedObject, // { service: "api", environment: "production", version: "1.2.3" }
      array: normalizedArray, // { service: "api", environment: "production", version: "1.2.3" }
      areEqual:
        JSON.stringify(normalizedObject) === JSON.stringify(normalizedArray) // true
    }
  }
})
```

**Signature**

```ts
type Attributes = AttributeSet | ReadonlyArray<[string, string]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1229)

Since v2.0.0