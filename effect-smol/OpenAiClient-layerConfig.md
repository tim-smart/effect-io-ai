Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.layerConfig

Creates a layer that loads OpenAI-compatible client settings from `Config`
values before constructing the service.

**Signature**

```ts
declare const layerConfig: (options?: { readonly apiKey?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly apiUrl?: Config.Config<string> | undefined; readonly organizationId?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly projectId?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined; }) => Layer.Layer<OpenAiClient, Config.ConfigError, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L268)

Since v4.0.0