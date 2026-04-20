Package: `@effect/ai-openai`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.Service

The OpenAI client interface.

**Signature**

```ts
export interface Service {
  /**
   * The transformed HTTP client used by this service.
   */
  readonly client: HttpClient.HttpClient

  /**
   * Create a response using the OpenAI responses endpoint.
   */
  readonly createResponse: (
    options: typeof OpenAiSchema.CreateResponse.Encoded
  ) => Effect.Effect<
    readonly [body: typeof OpenAiSchema.Response.Type, response: HttpClientResponse.HttpClientResponse],
    AiError.AiError
  >

  /**
   * Create a streaming response using the OpenAI responses endpoint.
   */
  readonly createResponseStream: (
    options: Omit<typeof OpenAiSchema.CreateResponse.Encoded, "stream">
  ) => Effect.Effect<
    readonly [
      response: HttpClientResponse.HttpClientResponse,
      stream: Stream.Stream<typeof OpenAiSchema.ResponseStreamEvent.Type, AiError.AiError>
    ],
    AiError.AiError
  >

  /**
   * Create embeddings using the OpenAI embeddings endpoint.
   */
  readonly createEmbedding: (
    options: typeof OpenAiSchema.CreateEmbeddingRequest.Encoded
  ) => Effect.Effect<typeof OpenAiSchema.CreateEmbeddingResponse.Type, AiError.AiError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiClient.ts#L47)

Since v1.0.0