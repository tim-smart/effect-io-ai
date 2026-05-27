Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.Service

Represents the Anthropic client service with methods for the Messages API, including regular and streaming message
creation.

**Signature**

```ts
export interface Service {
  /**
   * The underlying generated Anthropic client that exposes all API endpoints.
   */
  readonly client: Generated.AnthropicClient

  /**
   * Executes a low-level streaming HTTP request and decodes the Server-Sent Events response using the provided schema.
   */
  readonly streamRequest: <
    Type extends {
      readonly id?: string | undefined
      readonly event: string
      readonly data: string
    },
    DecodingServices
  >(
    schema: Schema.Decoder<Type, DecodingServices>
  ) => (request: HttpClientRequest.HttpClientRequest) => Stream.Stream<
    Type,
    HttpClientError.HttpClientError | Schema.SchemaError | Sse.Retry,
    DecodingServices
  >

  /**
   * Creates a message using the Anthropic Messages API and maps all errors to the unified `AiError` type.
   */
  readonly createMessage: (options: {
    readonly payload: typeof Generated.BetaCreateMessageParams.Encoded
    readonly params?: typeof Generated.BetaMessagesPostParams.Encoded | undefined
  }) => Effect.Effect<
    [body: typeof Generated.BetaMessage.Type, response: HttpClientResponse.HttpClientResponse],
    AiError.AiError
  >

  /**
   * Creates a streaming message using the Anthropic Messages API and maps all errors to the unified `AiError` type.
   *
   * **Details**
   *
   * The returned Effect yields the HTTP response and a stream of events as the model generates its response. The stream
   * automatically terminates when a `message_stop` event is received.
   */
  readonly createMessageStream: (options: {
    readonly payload: Omit<typeof Generated.BetaCreateMessageParams.Encoded, "stream">
    readonly params?: typeof Generated.BetaMessagesPostParams.Encoded | undefined
  }) => Effect.Effect<
    [response: HttpClientResponse.HttpClientResponse, stream: Stream.Stream<MessageStreamEvent, AiError.AiError>],
    AiError.AiError
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L68)

Since v4.0.0