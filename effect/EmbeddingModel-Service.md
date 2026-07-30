Package: `@effect/ai`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.Service

The service interface for vector embedding operations.

Defines the contract that all embedding model implementations must fulfill.
The service provides text-to-vector conversion functionality.

**Signature**

```ts
export interface Service {
  /**
   * Converts a text string into a vector embedding.
   */
  readonly embed: (input: string) => Effect.Effect<Array<number>, AiError.AiError>
  /**
   * Converts a batch of text strings into a chunk of vector embeddings.
   */
  readonly embedMany: (input: ReadonlyArray<string>, options?: {
    /**
     * The concurrency level to use while batching requests.
     */
    readonly concurrency?: Types.Concurrency | undefined
  }) => Effect.Effect<Array<Array<number>>, AiError.AiError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/EmbeddingModel.ts#L109)

Since v1.0.0