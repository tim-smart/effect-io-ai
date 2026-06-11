Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.Service

Effect service interface for OpenAI-compatible chat completions and embeddings.

**Details**

Exposes the configured HTTP client plus helpers for non-streaming chat
completions, streaming chat completions, and embeddings. Transport and
schema decoding failures are mapped to `AiError`.

**Signature**

```ts
export interface Service {
  readonly client: HttpClient.HttpClient
  readonly createResponse: (
    options: CreateResponseRequestJson
  ) => Effect.Effect<
    [body: CreateResponse200, response: HttpClientResponse.HttpClientResponse],
    AiError.AiError
  >
  readonly createResponseStream: (
    options: Omit<CreateResponseRequestJson, "stream" | "stream_options">
  ) => Effect.Effect<
    [
      response: HttpClientResponse.HttpClientResponse,
      stream: Stream.Stream<CreateResponse200Sse, AiError.AiError>
    ],
    AiError.AiError
  >
  readonly createEmbedding: (
    options: CreateEmbeddingRequestJson
  ) => Effect.Effect<CreateEmbedding200, AiError.AiError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L40)

Since v4.0.0