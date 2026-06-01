Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.AllAttributes

All telemetry attributes which are part of the GenAI specification,
including the OpenAI-specific attributes.

**Signature**

```ts
type AllAttributes = Telemetry.AllAttributes & RequestAttributes & ResponseAttributes
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiTelemetry.ts#L68)

Since v4.0.0