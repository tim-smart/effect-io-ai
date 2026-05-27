Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.OpenAiClient

Context service tag for the OpenAI-compatible chat completions and embeddings client.

**When to use**

Use when building effects that depend on the low-level OpenAI-compatible
client through context rather than receiving the client as a value.

**Details**

The tagged service is the `Service` interface produced by `make` and provided
by `layer` or `layerConfig`.

**See**

- `Service` for the operations provided by the service
- `make` for constructing the service from explicit options
- `layer` for providing the service from explicit options
- `layerConfig` for loading client settings from `Config`

**Signature**

```ts
declare class OpenAiClient
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L100)

Since v4.0.0