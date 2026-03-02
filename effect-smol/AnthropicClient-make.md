Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.make

Creates an Anthropic client service with the given options.

The client automatically handles:
- API key authentication via the `x-api-key` header
- API versioning via the `anthropic-version` header
- Error mapping to the unified `AiError` type
- Request/response transformations via `AnthropicConfig`

Requires an `HttpClient` in the context.

**Signature**

```ts
declare const make: (options: Options) => Effect.Effect<Service, never, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L210)

Since v1.0.0