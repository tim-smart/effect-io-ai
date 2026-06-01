Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.layerConfig

Creates a layer that loads OpenAI-compatible client settings from `Config`
values before constructing the service.

**When to use**

Use when you need client settings for OpenAI-compatible APIs to be read from
Effect `Config` values while providing `OpenAiClient` as a layer.

**Details**

Only config values supplied in `options` are loaded. Omitted fields are
passed to `make` as `undefined`, and `transformClient` is forwarded as a
plain option.

**See**

- `make` for constructing the client service effectfully
- `layer` for providing the client from already-resolved options

**Signature**

```ts
declare const layerConfig: (options?: { readonly apiKey?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly apiUrl?: Config.Config<string> | undefined; readonly organizationId?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly projectId?: Config.Config<Redacted.Redacted<string> | undefined> | undefined; readonly transformClient?: ((client: HttpClient.HttpClient) => HttpClient.HttpClient) | undefined; }) => Layer.Layer<OpenAiClient, Config.ConfigError, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L323)

Since v4.0.0