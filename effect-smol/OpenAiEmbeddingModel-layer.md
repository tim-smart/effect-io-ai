Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiEmbeddingModel`<br />

## OpenAiEmbeddingModel.layer

Creates a layer for an OpenAI-compatible embedding model service.

**When to use**

Use when composing application layers and you want an OpenAI-compatible
embeddings endpoint to satisfy `EmbeddingModel.EmbeddingModel` while
supplying `OpenAiClient` from another layer.

**See**

- `make` for constructing the embedding model service effectfully
- `model` for creating an `AiModel` with configured dimensions

**Signature**

```ts
declare const layer: (options: { readonly model: string; readonly config?: ModelConfig | undefined; }) => Layer.Layer<EmbeddingModel.EmbeddingModel, never, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiEmbeddingModel.ts#L153)

Since v4.0.0