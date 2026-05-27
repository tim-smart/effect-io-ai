Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.Options

Configuration options used to construct an OpenAI-compatible client.

**Signature**

```ts
type Options = {
  readonly apiKey?: Redacted.Redacted<string> | undefined
  readonly apiUrl?: string | undefined
  readonly organizationId?: Redacted.Redacted<string> | undefined
  readonly projectId?: Redacted.Redacted<string> | undefined
  readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L110)

Since v4.0.0