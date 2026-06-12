Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.Options

Configuration for creating an Anthropic client.

**When to use**

Use when the Anthropic client settings are already available as values and
should be passed directly to `make` or `layer`.

**Details**

These options configure the base Anthropic URL, the `x-api-key`
authentication header, the `anthropic-version` header, and an optional
transformation of the underlying `HttpClient`.

**See**

- `make` for constructing an Anthropic client from explicit options
- `layer` for providing an Anthropic client from explicit options
- `layerConfig` for loading Anthropic client settings from `Config`

**Signature**

```ts
type Options = {
  /**
   * The Anthropic API key for authentication. Requests are made without authentication when this is omitted, which is
   * useful for proxied setups or testing.
   */
  readonly apiKey?: Redacted.Redacted<string> | undefined

  /**
   * The base URL for the Anthropic API. Override this to use a proxy or a different API-compatible endpoint.
   *
   * @default "https://api.anthropic.com"
   */
  readonly apiUrl?: string | undefined

  /**
   * The Anthropic API version header value. This controls which version of the API to use.
   *
   * @default "2023-06-01"
   */
  readonly apiVersion?: string | undefined

  /**
   * Optional transformer for the underlying HTTP client, such as middleware, logging, or custom request/response
   * handling.
   */
  readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L161)

Since v4.0.0