Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiError`<br />

## OpenAiError.OpenAiRateLimitMetadata

OpenAI-specific rate limit metadata fields.

Extends base error metadata with rate limit specific information from
OpenAI's rate limit headers.

**Signature**

```ts
type OpenAiRateLimitMetadata = OpenAiErrorMetadata & {
  /**
   * The rate limit type (e.g. "requests", "tokens").
   */
  readonly limit: string | null
  /**
   * Number of remaining requests in the current window.
   */
  readonly remaining: number | null
  /**
   * Time until the request rate limit resets.
   */
  readonly resetRequests: string | null
  /**
   * Time until the token rate limit resets.
   */
  readonly resetTokens: string | null
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiError.ts#L35)

Since v1.0.0