Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTelemetry`<br />

## AnthropicTelemetry.AnthropicTelemetryAttributeOptions

Options accepted by `addGenAIAnnotations`, combining standard GenAI telemetry attributes with optional Anthropic request and response attributes.

**Signature**

```ts
type AnthropicTelemetryAttributeOptions = Telemetry.GenAITelemetryAttributeOptions & {
  anthropic?: {
    request?: RequestAttributes | undefined
    response?: ResponseAttributes | undefined
  } | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTelemetry.ts#L89)

Since v4.0.0