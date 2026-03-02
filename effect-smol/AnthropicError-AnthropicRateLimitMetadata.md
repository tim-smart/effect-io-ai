Package: `@effect/ai-anthropic`<br />
Module: `AnthropicError`<br />

## AnthropicError.AnthropicRateLimitMetadata

Anthropic-specific rate limit metadata fields.

Extends base error metadata with rate limit specific information from
Anthropic's rate limit headers.

**Signature**

```ts
type AnthropicRateLimitMetadata = AnthropicErrorMetadata & {
  /**
   * Number of requests allowed in the current period.
   */
  readonly requestsLimit: number | null
  /**
   * Number of requests remaining in the current period.
   */
  readonly requestsRemaining: number | null
  /**
   * Time when the request rate limit resets.
   */
  readonly requestsReset: string | null
  /**
   * Number of tokens allowed in the current period.
   */
  readonly tokensLimit: number | null
  /**
   * Number of tokens remaining in the current period.
   */
  readonly tokensRemaining: number | null
  /**
   * Time when the token rate limit resets.
   */
  readonly tokensReset: string | null
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicError.ts#L36)

Since v1.0.0