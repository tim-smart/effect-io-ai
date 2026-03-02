Package: `effect`<br />
Module: `Metric`<br />

## Metric.Metric.AttributeSet

Type for metric attributes as a readonly record of string key-value pairs.

**Example**

```ts
import { Data, Effect, Metric } from "effect"

class AttributeSetError extends Data.TaggedError("AttributeSetError")<{
  readonly operation: string
}> {}

const program = Effect.gen(function*() {
  // Define attribute sets for different contexts
  const serviceAttributes = {
    service: "user-api",
    version: "2.1.0",
    environment: "production"
  }

  const operationAttributes = {
    operation: "create_user",
    method: "POST",
    endpoint: "/api/users"
  }

  const infrastructureAttributes = {
    region: "us-east-1",
    datacenter: "dc1",
    host: "api-server-01"
  }

  // Create metrics with predefined attribute sets
  const requestCounter = Metric.counter("http_requests_total", {
    description: "Total HTTP requests",
    attributes: serviceAttributes
  })

  // Combine attribute sets
  const combineAttributes = (...attributeSets: Array<Record<string, string>>) =>
    Object.assign({}, ...attributeSets)

  const fullAttributes = combineAttributes(
    serviceAttributes,
    operationAttributes,
    infrastructureAttributes
  )

  // Create metric with combined attributes
  const detailedCounter = Metric.withAttributes(requestCounter, fullAttributes)

  // Helper to validate attribute keys (all must be strings)
  const validateAttributeSet = (attrs: Record<string, string>): boolean => {
    return Object.entries(attrs).every(([key, value]) =>
      typeof key === "string" && typeof value === "string"
    )
  }

  yield* Metric.update(detailedCounter, 1)

  return {
    attributes: {
      service: serviceAttributes,
      operation: operationAttributes,
      infrastructure: infrastructureAttributes,
      combined: fullAttributes,
      isValid: validateAttributeSet(fullAttributes), // true
      totalKeys: Object.keys(fullAttributes).length // 9
    }
  }
})
```

**Signature**

```ts
type AttributeSet = Readonly<Record<string, string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L1306)

Since v2.0.0