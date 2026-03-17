Package: `effect`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.ProviderResponse

Provider response for batch embedding requests.

**Signature**

```ts
export interface ProviderResponse {
  readonly results: Array<Array<number>>
  readonly usage: {
    readonly inputTokens: number | undefined
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EmbeddingModel.ts#L98)

Since v4.0.0