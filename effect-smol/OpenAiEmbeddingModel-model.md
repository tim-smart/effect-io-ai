Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiEmbeddingModel`<br />

## OpenAiEmbeddingModel.model

Creates an `AiModel` for an OpenAI-compatible embedding model with its configured vector dimensions.

**When to use**

Use to provide an OpenAI-compatible `EmbeddingModel` and its `Dimensions`
service to an Effect program.

**See**

- `layer` for providing only the embedding model service
- `withConfigOverride` for scoped request configuration overrides

**Signature**

```ts
declare const model: (model: string, options: Omit<ConfigOptions, "model" | "dimensions"> & { readonly dimensions: number; readonly [x: string]: unknown; }) => AiModel.Model<"openai", EmbeddingModel.EmbeddingModel | EmbeddingModel.Dimensions, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiEmbeddingModel.ts#L71)

Since v4.0.0