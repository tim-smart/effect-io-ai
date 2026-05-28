Package: `effect`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.EmbedManyResponse

Response for batch embedding requests containing per-input embeddings and usage
metadata.

**Details**

`embeddings` preserves batch order, and `usage` carries token metadata for
the operation.

**See**

- `EmbedResponse` for individual embedding responses
- `EmbeddingUsage` for token usage metadata

**Signature**

```ts
declare class EmbedManyResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EmbeddingModel.ts#L139)

Since v4.0.0