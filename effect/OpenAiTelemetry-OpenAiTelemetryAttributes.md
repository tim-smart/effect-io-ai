## OpenAiTelemetryAttributes

The attributes used to describe telemetry in the context of Generative
Artificial Intelligence (GenAI) Models requests and responses.

{@see https://opentelemetry.io/docs/specs/semconv/attributes-registry/gen-ai/}

**Signature**

```ts
type OpenAiTelemetryAttributes = Simplify<
  & AiTelemetry.GenAITelemetryAttributes
  & AiTelemetry.GenAI.AttributesWithPrefix<OpenAiTelemetry.RequestAttributes, "gen_ai.openai.request">
  & AiTelemetry.GenAI.AttributesWithPrefix<OpenAiTelemetry.ResponseAttributes, "gen_ai.openai.request">
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTelemetry.ts#L20)

Since v1.0.0