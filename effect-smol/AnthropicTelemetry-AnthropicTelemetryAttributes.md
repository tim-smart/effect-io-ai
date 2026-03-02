Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTelemetry`<br />

## AnthropicTelemetry.AnthropicTelemetryAttributes

The attributes used to describe telemetry in the context of Generative
Artificial Intelligence (GenAI) Models requests and responses.

{@see https://opentelemetry.io/docs/specs/semconv/attributes-registry/gen-ai/}

**Signature**

```ts
type AnthropicTelemetryAttributes = Simplify<
  & Telemetry.GenAITelemetryAttributes
  & Telemetry.AttributesWithPrefix<RequestAttributes, "gen_ai.anthropic.request">
  & Telemetry.AttributesWithPrefix<ResponseAttributes, "gen_ai.anthropic.response">
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTelemetry.ts#L25)

Since v1.0.0