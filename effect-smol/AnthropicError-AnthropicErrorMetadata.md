Package: `@effect/ai-anthropic`<br />
Module: `AnthropicError`<br />

## AnthropicError.AnthropicErrorMetadata

Anthropic-specific error metadata fields.

**Details**

Contains the Anthropic error type and request identifier copied from provider
error responses when available. Either field may be `null` when Anthropic
does not include it or the response cannot be decoded.

**See**

- `AnthropicRateLimitMetadata` for rate-limit responses that also include parsed Anthropic rate-limit headers

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicError.ts#L24)

Since v4.0.0