Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.layer

Creates a layer for the Anthropic client with the given options.

**When to use**

Use when you already have explicit `Options` values, such as an API key or
custom API URL, and want to provide `AnthropicClient` as a `Layer`.

**See**

- `make` for constructing the client service effectfully
- `layerConfig` for loading client settings from `Config`

**Signature**

```ts
declare const layer: (options: Options) => Layer.Layer<AnthropicClient, never, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L367)

Since v4.0.0