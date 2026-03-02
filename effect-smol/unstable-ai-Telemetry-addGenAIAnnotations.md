Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.addGenAIAnnotations

Applies GenAI telemetry attributes to an OpenTelemetry span.

This function adds standardized GenAI attributes to a span following OpenTelemetry
semantic conventions. It supports both curried and direct application patterns.

**Note**: This function mutates the provided span in-place.

**Example**

```ts
import { Effect } from "effect"
import { Telemetry } from "effect/unstable/ai"

const directUsage = Effect.gen(function*() {
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L440)

Since v4.0.0