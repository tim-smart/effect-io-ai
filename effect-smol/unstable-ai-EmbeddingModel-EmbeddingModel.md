Package: `effect`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.EmbeddingModel

Service tag for embedding model operations.

**When to use**

Use to retrieve or provide an `EmbeddingModel.Service` when an `Effect`
program needs to embed text into vectors.

**See**

- `Service` for the service contract provided by this tag
- `make` for constructing an embedding model service from a provider
- `Dimensions` for the current embedding vector size service

**Signature**

```ts
declare class EmbeddingModel
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EmbeddingModel.ts#L73)

Since v4.0.0