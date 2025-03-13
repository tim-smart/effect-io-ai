Package: `@effect/ai-openai`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.addGenAIAnnotations

Applies the specified OpenAi GenAI telemetry attributes to the provided
`Span`.

**NOTE**: This method will mutate the `Span` **in-place**.

**Signature**

```ts
declare const addGenAIAnnotations: ((options: OpenAiTelemetryAttributeOptions) => (span: Span) => void) & ((span: Span, options: OpenAiTelemetryAttributeOptions) => void)
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTelemetry.ts#L128)

Since v1.0.0, utilities