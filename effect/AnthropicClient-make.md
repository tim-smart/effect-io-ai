Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.make

Creates an Anthropic client service with the given options.

**When to use**

Use when you have explicit configuration values and need an `Effect` that
constructs the Anthropic client service, rather than providing it as a `Layer`.

**Details**

The client handles API key authentication via the `x-api-key` header, API versioning via the `anthropic-version`
header, error mapping to the unified `AiError` type, and request/response transformations via `AnthropicConfig`. It
requires an `HttpClient` in the context.

**See**

- `layer` for providing the client as a `Layer` from explicit options
- `layerConfig` for providing the client as a `Layer` with `Config`-based settings

**Signature**

```ts
declare const make: (options: Options) => Effect.Effect<Service, never, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L217)

Since v4.0.0