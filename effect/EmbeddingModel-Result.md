Package: `@effect/ai`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.Result

Represents the result of a batch embedding operation.

Used internally by the batching system to associate embeddings with their
original request positions in the batch.

**Example**

```ts
import { EmbeddingModel } from "@effect/ai"

const batchResults: EmbeddingModel.Result[] = [
  { index: 0, embeddings: [0.1, 0.2, 0.3] },
  { index: 1, embeddings: [0.4, 0.5, 0.6] },
  { index: 2, embeddings: [0.7, 0.8, 0.9] }
]

// Results correspond to input texts at positions 0, 1, 2
```

**Signature**

```ts
export interface Result {
  /**
   * The position index of this result in the original batch request.
   */
  readonly index: number

  /**
   * The vector embedding for the text at this index.
   */
  readonly embeddings: Array<number>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/EmbeddingModel.ts#L147)

Since v1.0.0