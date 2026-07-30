Package: `@effect/ai`<br />
Module: `Telemetry`<br />

## Telemetry.addGenAIAnnotations

Applies GenAI telemetry attributes to an OpenTelemetry span.

This function adds standardized GenAI attributes to a span following OpenTelemetry
semantic conventions. It supports both curried and direct application patterns.

**Note**: This function mutates the provided span in-place.

**Example**

```ts
import { Telemetry } from "@effect/ai"
import { Effect } from "effect"

const directUsage = Effect.gen(function* () {
  const span = yield* Effect.currentSpan

  Telemetry.addGenAIAnnotations(span, {
    system: "openai",
    request: { model: "gpt-4", temperature: 0.7 },
    usage: { inputTokens: 100, outputTokens: 50 }
  })
})
```

**Signature**

```ts
declare const addGenAIAnnotations: { (options: GenAITelemetryAttributeOptions): (span: Span) => void; (span: Span, options: GenAITelemetryAttributeOptions): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Telemetry.ts#L441)

Since v1.0.0