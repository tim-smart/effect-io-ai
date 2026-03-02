Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.Options

Configuration options for creating an Anthropic client.

**Signature**

```ts
type Options = {
  /**
   * The Anthropic API key for authentication.
   *
   * If not provided, requests will be made without authentication (useful for
   * proxied setups or testing).
   */
  readonly apiKey?: Redacted.Redacted<string> | undefined

  /**
   * The base URL for the Anthropic API.
   *
   * Override this to use a proxy or a different API-compatible endpoint.
   *
   * @default "https://api.anthropic.com"
   */
  readonly apiUrl?: string | undefined

  /**
   * The Anthropic API version header value.
   *
   * Controls which version of the API to use. See Anthropic's versioning
   * documentation for available versions and their features.
   *
   * @default "2023-06-01"
   */
  readonly apiVersion?: string | undefined

  /**
   * Optional transformer for the underlying HTTP client.
   *
   * Use this to add middleware, logging, or custom request/response handling.
   */
  readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L152)

Since v1.0.0