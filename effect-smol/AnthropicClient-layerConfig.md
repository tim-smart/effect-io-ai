Package: `@effect/ai-anthropic`<br />
Module: `AnthropicClient`<br />

## AnthropicClient.layerConfig

Creates a layer for the Anthropic client, loading the requisite configuration
via Effect's `Config` module.

**When to use**

Use when you want to provide the Anthropic client as a `Layer` with
configuration loaded from Effect's `Config` module, such as from environment
variables or a secrets provider.

**See**

- `layer` for providing the client from explicit options instead of `Config`
- `make` for constructing the client service effectfully

**Signature**

```ts
declare const layerConfig: (options?: { readonly apiKey?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly apiUrl?: Config.Config<string> | undefined; readonly apiVersion?: Config.Config<string> | undefined; readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined; }) => Layer.Layer<AnthropicClient, Config.ConfigError, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicClient.ts#L399)

Since v4.0.0