Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.addGenAIAnnotations

Applies the specified OpenAi GenAI telemetry attributes to the provided
`Span`.

**Gotchas**

This method will mutate the `Span` **in-place**.

**Signature**

```ts
declare const addGenAIAnnotations: { (options: OpenAiTelemetryAttributeOptions): (span: Span) => void; (span: Span, options: OpenAiTelemetryAttributeOptions): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiTelemetry.ts#L136)

Since v4.0.0