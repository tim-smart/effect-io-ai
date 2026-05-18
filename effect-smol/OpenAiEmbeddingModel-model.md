Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiEmbeddingModel`<br />

## OpenAiEmbeddingModel.model

Creates an OpenAI-compatible embedding model that can be used with
`AiModel.provide`.

**Signature**

```ts
declare const model: (model: string, options: { readonly dimensions: number; readonly config?: Omit<typeof Config.Service, "model" | "dimensions">; }) => AiModel.Model<"openai", EmbeddingModel.EmbeddingModel | EmbeddingModel.Dimensions, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiEmbeddingModel.ts#L55)

Since v4.0.0