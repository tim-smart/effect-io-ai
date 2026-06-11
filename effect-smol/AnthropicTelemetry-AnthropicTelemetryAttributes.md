Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTelemetry`<br />

## AnthropicTelemetry.AnthropicTelemetryAttributes

The attributes used to describe telemetry in the context of Generative
Artificial Intelligence (GenAI) Models requests and responses.

**Details**

These attributes follow the OpenTelemetry generative AI semantic
conventions:
https://opentelemetry.io/docs/specs/semconv/attributes-registry/gen-ai/

**Signature**

```ts
type AnthropicTelemetryAttributes = Simplify<
  & Telemetry.GenAITelemetryAttributes
  & Telemetry.AttributesWithPrefix<RequestAttributes, "gen_ai.anthropic.request">
  & Telemetry.AttributesWithPrefix<ResponseAttributes, "gen_ai.anthropic.response">
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTelemetry.ts#L28)

Since v4.0.0