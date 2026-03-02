Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterClient`<br />

## OpenRouterClient.Service

The OpenRouter client service interface.

Provides methods for interacting with OpenRouter's Chat Completions API,
including both synchronous and streaming message creation.

**Signature**

```ts
export interface Service {
  readonly client: Generated.OpenRouterClient

  readonly createChatCompletion: (
    options: typeof Generated.ChatGenerationParams.Encoded
  ) => Effect.Effect<
    [body: typeof Generated.SendChatCompletionRequest200.Type, response: HttpClientResponse.HttpClientResponse],
    AiError.AiError
  >

  readonly createChatCompletionStream: (
    options: Omit<typeof Generated.ChatGenerationParams.Encoded, "stream" | "stream_options">
  ) => Effect.Effect<
    [
      response: HttpClientResponse.HttpClientResponse,
      stream: Stream.Stream<ChatStreamingResponseChunkData, AiError.AiError>
    ],
    AiError.AiError
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterClient.ts#L36)

Since v1.0.0