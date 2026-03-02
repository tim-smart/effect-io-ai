Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterClient`<br />

## OpenRouterClient.layerConfig

Creates a layer for the OpenRouter client, loading the requisite
configuration via Effect's `Config` module.

**Signature**

```ts
declare const layerConfig: (options?: { readonly apiKey?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly apiUrl?: Config.Config<string> | undefined; readonly siteReferrer?: Config.Config<string> | undefined; readonly siteTitle?: Config.Config<string> | undefined; readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined; }) => Layer.Layer<OpenRouterClient, Config.ConfigError, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterClient.ts#L228)

Since v1.0.0