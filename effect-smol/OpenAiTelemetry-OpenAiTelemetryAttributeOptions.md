Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.OpenAiTelemetryAttributeOptions

Options accepted by `addGenAIAnnotations`, combining standard GenAI telemetry
attributes with optional OpenAI-compatible request and response attributes.

**Signature**

```ts
type OpenAiTelemetryAttributeOptions = Telemetry.GenAITelemetryAttributeOptions & {
  openai?: {
    request?: RequestAttributes | undefined
    response?: ResponseAttributes | undefined
  } | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiTelemetry.ts#L111)

Since v4.0.0