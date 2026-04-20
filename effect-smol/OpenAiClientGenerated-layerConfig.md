Package: `@effect/ai-openai`<br />
Module: `OpenAiClientGenerated`<br />

## OpenAiClientGenerated.layerConfig

Creates a layer for the generated OpenAI client, loading the requisite
configuration via Effect's `Config` module.

**Signature**

```ts
declare const layerConfig: (options?: { readonly apiKey?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly apiUrl?: Config.Config<string> | undefined; readonly organizationId?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly projectId?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined; }) => Layer.Layer<OpenAiClientGenerated, Config.ConfigError, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiClientGenerated.ts#L153)

Since v1.0.0