Package: `@effect/ai-openai`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.Service

The OpenAI client interface.

**Signature**

```ts
export interface Service {
  /**
   * The underlying generated OpenAI client.
   */
  readonly client: Generated.OpenAiClient

  /**
   * Create a response using the OpenAI responses endpoint.
   */
  readonly createResponse: (
    options: typeof Generated.CreateResponse.Encoded
  ) => Effect.Effect<
    readonly [body: typeof Generated.Response.Type, response: HttpClientResponse.HttpClientResponse],
    AiError.AiError
  >

  /**
   * Create a streaming response using the OpenAI responses endpoint.
   */
  readonly createResponseStream: (
    options: Omit<typeof Generated.CreateResponse.Encoded, "stream">
  ) => Effect.Effect<
    readonly [
      response: HttpClientResponse.HttpClientResponse,
      stream: Stream.Stream<typeof Generated.ResponseStreamEvent.Type, AiError.AiError>
    ],
    AiError.AiError
  >

  /**
   * Create embeddings using the OpenAI embeddings endpoint.
   */
  readonly createEmbedding: (
    options: typeof Generated.CreateEmbeddingRequest.Encoded
  ) => Effect.Effect<typeof Generated.CreateEmbeddingResponse.Type, AiError.AiError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiClient.ts#L50)

Since v1.0.0