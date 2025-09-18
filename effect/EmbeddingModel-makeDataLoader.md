Package: `@effect/ai`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.makeDataLoader

Creates an EmbeddingModel service with time-window based batching.

This constructor creates a service that uses a data loader pattern to batch
embedding requests within a specified time window. This is optimal for
high-throughput scenarios where you want to automatically batch requests that
arrive within a short time period.

**Signature**

```ts
declare const makeDataLoader: (options: { readonly embedMany: (input: ReadonlyArray<string>) => Effect.Effect<Array<Result>, AiError.AiError>; readonly window: Duration.DurationInput; readonly maxBatchSize?: number; }) => Effect.Effect<Service, never, Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/EmbeddingModel.ts#L269)

Since v1.0.0