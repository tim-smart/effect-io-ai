Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterClient`<br />

## OpenRouterClient.Options

Configuration options for creating an OpenRouter client.

**Signature**

```ts
type Options = {
  readonly apiKey?: Redacted.Redacted<string> | undefined

  readonly apiUrl?: string | undefined

  /**
   * Optional URL of your site for rankings on `openrouter.ai`.
   */
  readonly siteReferrer?: string | undefined

  /**
   * Optional title of your site for rankings on `openrouter.ai`.
   */
  readonly siteTitle?: string | undefined

  /**
   * Optional transformer for the underlying HTTP client.
   *
   * Use this to add middleware, logging, or custom request/response handling.
   */
  readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterClient.ts#L88)

Since v1.0.0