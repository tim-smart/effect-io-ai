Package: `@effect/ai-openai`<br />
Module: `OpenAiClientGenerated`<br />

## OpenAiClientGenerated.Options

Options for configuring the generated OpenAI client.

**Signature**

```ts
type Options = {
  /**
   * The OpenAI API key.
   */
  readonly apiKey?: Redacted.Redacted<string> | undefined

  /**
   * The base URL for the OpenAI API.
   *
   * @default "https://api.openai.com/v1"
   */
  readonly apiUrl?: string | undefined

  /**
   * Optional organization ID for multi-org accounts.
   */
  readonly organizationId?: Redacted.Redacted<string> | undefined

  /**
   * Optional project ID for project-scoped requests.
   */
  readonly projectId?: Redacted.Redacted<string> | undefined

  /**
   * Optional transformer for the HTTP client.
   */
  readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiClientGenerated.ts#L43)

Since v1.0.0