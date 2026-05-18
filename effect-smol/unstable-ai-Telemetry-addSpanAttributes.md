Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.addSpanAttributes

Creates a reusable span-attribute writer for a key prefix and key
transformer.

The returned function mutates the supplied span by adding each non-nullish
attribute as `${prefix}.${transformedKey}`.

**Example** (Adding prefixed span attributes)

```ts
import type { Tracer } from "effect"
import { String } from "effect"
import { Telemetry } from "effect/unstable/ai"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L326)

Since v4.0.0