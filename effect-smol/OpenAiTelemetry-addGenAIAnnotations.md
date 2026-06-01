Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiTelemetry`<br />

## OpenAiTelemetry.addGenAIAnnotations

Applies the specified OpenAI GenAI telemetry attributes to the provided
`Span`.

**When to use**

Use to annotate an OpenAI-compatible model span with standard GenAI telemetry
attributes and OpenAI-specific request or response metadata.

**Details**

Standard GenAI attributes are applied first. When OpenAI request or response
metadata is present, it is written under `gen_ai.openai.request.*` and
`gen_ai.openai.response.*` attributes.

**Gotchas**

Mutates the supplied `Span` in place.

**Signature**

```ts
declare const addGenAIAnnotations: { (options: OpenAiTelemetryAttributeOptions): (span: Span) => void; (span: Span, options: OpenAiTelemetryAttributeOptions): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiTelemetry.ts#L178)

Since v4.0.0