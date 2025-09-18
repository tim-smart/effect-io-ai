Package: `@effect/ai`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.make

Creates an EmbeddingModel service with batching and caching capabilities.

This is the primary constructor for creating embedding services. It supports
automatic batching of requests for efficiency and optional caching to reduce
redundant API calls.

**Signature**

```ts
declare const make: (options: { readonly embedMany: (input: ReadonlyArray<string>) => Effect.Effect<Array<Result>, AiError.AiError>; readonly maxBatchSize?: number; readonly cache?: { readonly capacity: number; readonly timeToLive: Duration.DurationInput; }; }) => Effect.Effect<Service, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/EmbeddingModel.ts#L192)

Since v1.0.0