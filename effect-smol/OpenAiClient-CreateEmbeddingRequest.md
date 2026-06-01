Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.CreateEmbeddingRequest

Request payload for the embeddings endpoint.

**Signature**

```ts
type CreateEmbeddingRequest = {
  readonly input: string | ReadonlyArray<string> | ReadonlyArray<number> | ReadonlyArray<ReadonlyArray<number>>
  readonly model: string
  readonly encoding_format?: "float" | "base64" | undefined
  readonly dimensions?: number | undefined
  readonly user?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L890)

Since v4.0.0