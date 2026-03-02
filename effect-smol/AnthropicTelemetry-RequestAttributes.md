Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTelemetry`<br />

## AnthropicTelemetry.RequestAttributes

Telemetry attributes which are part of the GenAI specification and are
namespaced by `gen_ai.anthropic.request`.

**Signature**

```ts
export interface RequestAttributes {
  /**
   * Whether extended thinking is enabled.
   */
  readonly extendedThinking?: boolean | null | undefined
  /**
   * The budget tokens for extended thinking.
   */
  readonly thinkingBudgetTokens?: number | null | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTelemetry.ts#L47)

Since v1.0.0