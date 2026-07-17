Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTelemetry`<br />

## AnthropicTelemetry.addGenAIAnnotations

Applies the specified Anthropic GenAI telemetry attributes to the provided
`Span`.

**When to use**

Use to annotate an Anthropic model span with standard GenAI telemetry
attributes and Anthropic-specific request or response metadata.

**Gotchas**

This method mutates the `Span` in place.

**Signature**

```ts
declare const addGenAIAnnotations: { (options: AnthropicTelemetryAttributeOptions): (span: Span) => void; (span: Span, options: AnthropicTelemetryAttributeOptions): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTelemetry.ts#L119)

Since v4.0.0