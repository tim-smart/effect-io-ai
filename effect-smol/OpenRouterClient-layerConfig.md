Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterClient`<br />

## OpenRouterClient.layerConfig

Creates a layer for the OpenRouter client from provided `Config` values.

**When to use**

Use when you need client settings for OpenRouter to be read from Effect
`Config` values while providing `OpenRouterClient` as a layer.

**Details**

Only config values supplied in `options` are loaded. Omitted fields are
passed to `make` as `undefined`, and `transformClient` is forwarded as a
plain option.

**See**

- `make` for constructing the client service effectfully
- `layer` for providing the client from already-resolved options

**Signature**

```ts
declare const layerConfig: (options?: { readonly apiKey?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly apiUrl?: Config.Config<string> | undefined; readonly siteReferrer?: Config.Config<string> | undefined; readonly siteTitle?: Config.Config<string> | undefined; readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined; }) => Layer.Layer<OpenRouterClient, Config.ConfigError, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterClient.ts#L311)

Since v4.0.0