Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.CreateEmbeddingResponse

Successful response payload returned by the embeddings endpoint.

**Signature**

```ts
type CreateEmbeddingResponse = {
  readonly data: ReadonlyArray<Embedding>
  readonly model: string
  readonly object?: "list" | undefined
  readonly usage?: {
    readonly prompt_tokens: number
    readonly total_tokens: number
  } | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L847)

Since v4.0.0