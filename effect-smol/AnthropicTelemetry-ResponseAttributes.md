Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTelemetry`<br />

## AnthropicTelemetry.ResponseAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.anthropic.response`.

**Signature**

```ts
export interface ResponseAttributes {
  /**
   * The stop reason from the response.
   */
  readonly stopReason?: string | null | undefined
  /**
   * Number of cache creation input tokens.
   */
  readonly cacheCreationInputTokens?: number | null | undefined
  /**
   * Number of cache read input tokens.
   */
  readonly cacheReadInputTokens?: number | null | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTelemetry.ts#L65)

Since v1.0.0