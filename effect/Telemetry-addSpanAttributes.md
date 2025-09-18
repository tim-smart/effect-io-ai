Package: `@effect/ai`<br />
Module: `Telemetry`<br />

## Telemetry.addSpanAttributes

Creates a function to add attributes to a span with a given prefix and key transformation.

This utility function is used internally to create specialized functions for adding
different types of telemetry attributes to OpenTelemetry spans.

**Example**

```ts
import { Telemetry } from "@effect/ai"
import { String, Tracer } from "effect"

const addCustomAttributes = Telemetry.addSpanAttributes(
  "custom.ai",
  String.camelToSnake
)

// Usage with a span
declare const span: Tracer.Span
addCustomAttributes(span, {
  modelName: "gpt-4",
  maxTokens: 1000
})
// Results in attributes: "custom.ai.model_name" and "custom.ai.max_tokens"
```

**Signature**

```ts
declare const addSpanAttributes: (keyPrefix: string, transformKey: (key: string) => string) => <Attributes extends Record<string, any>>(span: Span, attributes: Attributes) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Telemetry.ts#L322)

Since v1.0.0