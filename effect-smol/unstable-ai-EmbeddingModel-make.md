Package: `effect`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.make

Creates an EmbeddingModel service from a provider embedMany implementation.

**Signature**

```ts
declare const make: (params: { readonly embedMany: (options: ProviderOptions) => Effect.Effect<ProviderResponse, AiError.AiError>; }) => Effect.Effect<Service>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EmbeddingModel.ts#L142)

Since v4.0.0