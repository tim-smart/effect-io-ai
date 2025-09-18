Package: `@effect/ai`<br />
Module: `EmbeddingModel`<br />

## EmbeddingModel.EmbeddingModel

The `EmbeddingModel` service tag for dependency injection.

This tag provides access to vector embedding functionality throughout your application,
enabling conversion of text to high-dimensional vectors for semantic analysis.

**Example**

```ts
import { EmbeddingModel } from "@effect/ai"
import { Effect } from "effect"

const useEmbeddings = Effect.gen(function* () {
  const embedder = yield* EmbeddingModel

  const documentVector = yield* embedder.embed("This is a sample document")
  const queryVector = yield* embedder.embed("sample query")

  const similarity = cosineSimilarity(documentVector, queryVector)
  return similarity
})
```

**Signature**

```ts
declare class EmbeddingModel
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/EmbeddingModel.ts#L88)

Since v1.0.0