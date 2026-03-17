Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiEmbeddingModel`<br />

## OpenAiEmbeddingModel.make

Creates an OpenAI embedding model service.

**Signature**

```ts
declare const make: (args_0: { readonly model: string; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Effect.Effect<EmbeddingModel.Service, never, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiEmbeddingModel.ts#L78)

Since v1.0.0