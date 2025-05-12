Package: `@effect/ai`<br />
Module: `AiTelemetry`<br />

## AiTelemetry.GenAITelemetryAttributes

The attributes used to describe telemetry in the context of Generative
Artificial Intelligence (GenAI) Models requests and responses.

{@see https://opentelemetry.io/docs/specs/semconv/attributes-registry/gen-ai/}

**Signature**

```ts
type GenAITelemetryAttributes = Simplify<
  & AttributesWithPrefix<BaseAttributes, "gen_ai">
  & AttributesWithPrefix<OperationAttributes, "gen_ai.operation">
  & AttributesWithPrefix<TokenAttributes, "gen_ai.token">
  & AttributesWithPrefix<UsageAttributes, "gen_ai.usage">
  & AttributesWithPrefix<RequestAttributes, "gen_ai.request">
  & AttributesWithPrefix<ResponseAttributes, "gen_ai.response">
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTelemetry.ts#L22)

Since v1.0.0