Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.make

Creates an Anthropic client service with the given options.

**Details**

The client handles API key authentication via the `x-api-key` header, API versioning via the `anthropic-version`
header, error mapping to the unified `AiError` type, and request/response transformations via `AnthropicConfig`. It
requires an `HttpClient` in the context.

**Signature**

```ts
declare const make: (options: Options) => Effect.Effect<Service, never, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L192)

Since v4.0.0