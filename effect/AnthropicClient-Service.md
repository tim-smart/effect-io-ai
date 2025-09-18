Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.Service

Represents the interface that the `AnthropicClient` service provides.

This service abstracts the complexity of communicating with Anthropic's API,
providing both high-level text generation methods and low-level HTTP access
for advanced use cases.

**Signature**

```ts
export interface Service {
  /**
   * The underlying HTTP client capable of communicating with the Anthropic API.
   *
   * This client is pre-configured with authentication, base URL, and standard
   * headers required for Anthropic API communication. It provides direct access
   * to the generated Anthropic API client for operations not covered by the
   * higher-level methods.
   *
   * Use this when you need to:
   * - Access provider-specific API endpoints not available through the AI SDK
   * - Implement custom request/response handling
   * - Use Anthropic API features not yet supported by the Effect AI abstractions
   * - Perform batch operations or non-streaming requests
   *
   * The client automatically handles authentication and follows Anthropic's
   * API conventions for request formatting and error handling.
   */
  readonly client: Generated.Client

  readonly streamRequest: <A, I, R>(
    request: HttpClientRequest.HttpClientRequest,
    schema: Schema.Schema<A, I, R>
  ) => Stream.Stream<A, AiError.AiError, R>

  readonly createMessage: (options: {
    readonly params?: typeof Generated.BetaMessagesPostParams.Encoded | undefined
    readonly payload: typeof Generated.BetaCreateMessageParams.Encoded
  }) => Effect.Effect<Generated.BetaMessage, AiError.AiError>

  readonly createMessageStream: (options: {
    readonly params?: typeof Generated.BetaMessagesPostParams.Encoded | undefined
    readonly payload: Omit<typeof Generated.BetaCreateMessageParams.Encoded, "stream">
  }) => Stream.Stream<MessageStreamEvent, AiError.AiError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L43)

Since v1.0.0