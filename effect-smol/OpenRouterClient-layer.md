Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterClient`<br />

## OpenRouterClient.layer

Creates a layer for the OpenRouter client with the given options.

**When to use**

Use when you already have the OpenRouter client options in code and want to
provide `OpenRouterClient` as a layer.

**See**

- `make` for constructing the client service effectfully
- `layerConfig` for loading client settings from `Config`

**Signature**

```ts
declare const layer: (options: Options) => Layer.Layer<OpenRouterClient, never, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterClient.ts#L289)

Since v4.0.0