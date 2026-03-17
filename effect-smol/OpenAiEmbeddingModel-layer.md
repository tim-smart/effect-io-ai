Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiEmbeddingModel`<br />

## OpenAiEmbeddingModel.layer

Creates a layer for the OpenAI embedding model.

**Signature**

```ts
declare const layer: (options: { readonly model: string; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Layer.Layer<EmbeddingModel.EmbeddingModel, never, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiEmbeddingModel.ts#L104)

Since v1.0.0