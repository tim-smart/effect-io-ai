## GenAITelemetryAttributes

The attributes used to describe telemetry in the context of Generative
Artificial Intelligence (GenAI) Models requests and responses.

{@see https://opentelemetry.io/docs/specs/semconv/attributes-registry/gen-ai/}

**Signature**

```ts
type GenAITelemetryAttributes = Simplify<
  & GenAI.AttributesWithPrefix<GenAI.BaseAttributes, "gen_ai">
  & GenAI.AttributesWithPrefix<GenAI.OperationAttributes, "gen_ai.operation">
  & GenAI.AttributesWithPrefix<GenAI.TokenAttributes, "gen_ai.token">
  & GenAI.AttributesWithPrefix<GenAI.UsageAttributes, "gen_ai.usage">
  & GenAI.AttributesWithPrefix<GenAI.RequestAttributes, "gen_ai.request">
  & GenAI.AttributesWithPrefix<GenAI.ResponseAttributes, "gen_ai.response">
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L20)

Since v1.0.0