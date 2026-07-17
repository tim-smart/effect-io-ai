Package: `effect`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.EmbeddingUsage

Represents token usage metadata for embedding operations.

**Details**

Contains optional provider-reported `inputTokens`. The value may be
`undefined` when the provider does not report usage or when `embedMany([])`
bypasses the provider.

**Signature**

```ts
declare class EmbeddingUsage
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EmbeddingModel.ts#L69)

Since v4.0.0