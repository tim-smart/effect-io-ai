Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.OpenAiTelemetryAttributes

The attributes used to describe telemetry in the context of Generative
Artificial Intelligence (GenAI) Models requests and responses.

{@see https://opentelemetry.io/docs/specs/semconv/attributes-registry/gen-ai/}

**Signature**

```ts
type OpenAiTelemetryAttributes = Simplify<
  & Telemetry.GenAITelemetryAttributes
  & Telemetry.AttributesWithPrefix<RequestAttributes, "gen_ai.openai.request">
  & Telemetry.AttributesWithPrefix<ResponseAttributes, "gen_ai.openai.request">
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiTelemetry.ts#L25)

Since v1.0.0