Package: `@effect/ai-anthropic`<br />
Module: `AnthropicError`<br />

## AnthropicError.AnthropicErrorMetadata

Anthropic-specific error metadata fields.

**Signature**

```ts
type AnthropicErrorMetadata = {
  /**
   * The Anthropic error type returned by the API.
   */
  readonly errorType: string | null
  /**
   * The unique request ID for debugging with Anthropic support.
   */
  readonly requestId: string | null
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicError.ts#L16)

Since v1.0.0