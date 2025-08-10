Package: `@effect/ai`<br />
Module: `AiEmbeddingModel`<br />

## AiEmbeddingModel.makeDataLoader

Creates an `Embeddings` service which will aggregate all `embed` requests
received during the specified `window` (up to a maximum of `maxBatchSize`
requests, if specified) and execute them as a single batch.

**Signature**

```ts
declare const makeDataLoader: (options: { readonly embedMany: (input: ReadonlyArray<string>) => Effect.Effect<Array<AiEmbeddingModel.Result>, AiError>; readonly window: Duration.DurationInput; readonly maxBatchSize?: number; }) => Effect.Effect<AiEmbeddingModel.Service, never, Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiEmbeddingModel.ts#L139)

Since v1.0.0