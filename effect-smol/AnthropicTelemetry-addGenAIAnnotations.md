Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTelemetry`<br />

## AnthropicTelemetry.addGenAIAnnotations

Applies the specified Anthropic GenAI telemetry attributes to the provided
`Span`.

**NOTE**: This method will mutate the `Span` **in-place**.

**Signature**

```ts
declare const addGenAIAnnotations: { (options: AnthropicTelemetryAttributeOptions): (span: Span) => void; (span: Span, options: AnthropicTelemetryAttributeOptions): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTelemetry.ts#L107)

Since v1.0.0