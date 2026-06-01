Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.layer

Creates a layer that provides an OpenAI-compatible client from explicit options.

**When to use**

Use to install `OpenAiClient` in an application layer when the client options
are already available as values rather than loaded from `Config`.

**See**

- `make` for constructing the client service effectfully
- `layerConfig` for loading client settings from `Config`

**Signature**

```ts
declare const layer: (options: Options) => Layer.Layer<OpenAiClient, never, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L299)

Since v4.0.0