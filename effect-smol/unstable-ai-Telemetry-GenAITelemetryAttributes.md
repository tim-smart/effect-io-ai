Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.GenAITelemetryAttributes

The attributes used to describe telemetry in the context of Generative
Artificial Intelligence (GenAI) models requests and responses.

{@see https://opentelemetry.io/docs/specs/semconv/attributes-registry/gen-ai/}

**Signature**

```ts
type GenAITelemetryAttributes = Struct.Simplify<
  & AttributesWithPrefix<BaseAttributes, "gen_ai">
  & AttributesWithPrefix<OperationAttributes, "gen_ai.operation">
  & AttributesWithPrefix<TokenAttributes, "gen_ai.token">
  & AttributesWithPrefix<UsageAttributes, "gen_ai.usage">
  & AttributesWithPrefix<RequestAttributes, "gen_ai.request">
  & AttributesWithPrefix<ResponseAttributes, "gen_ai.response">
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L52)

Since v4.0.0