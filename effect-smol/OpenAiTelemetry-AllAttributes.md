Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.AllAttributes

All telemetry attributes which are part of the GenAI specification,
including the OpenAi-specific attributes.

**Signature**

```ts
type AllAttributes = Telemetry.AllAttributes & RequestAttributes & ResponseAttributes
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiTelemetry.ts#L38)

Since v1.0.0