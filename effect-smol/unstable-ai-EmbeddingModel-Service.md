Package: `effect`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.Service

Service interface for embedding operations.

**Signature**

```ts
export interface Service {
  readonly resolver: RequestResolver.RequestResolver<EmbeddingRequest>
  readonly embed: (input: string) => Effect.Effect<EmbedResponse, AiError.AiError>
  readonly embedMany: (input: ReadonlyArray<string>) => Effect.Effect<EmbedManyResponse, AiError.AiError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EmbeddingModel.ts#L123)

Since v4.0.0