Package: `@effect/ai`<br />
Module: `index`<br />

## index.EmbeddingModel

Re-exports all named exports from the "./EmbeddingModel.js" module as `EmbeddingModel`.

**Example**

```ts
import { EmbeddingModel } from "@effect/ai"
import { Effect } from "effect"

// Basic embedding usage
const program = Effect.gen(function* () {
  const embedding = yield* EmbeddingModel.EmbeddingModel

  const vector = yield* embedding.embed("Hello world!")
  console.log(vector) // [0.123, -0.456, 0.789, ...]

  return vector
})
```

**Example**

```ts
import { EmbeddingModel } from "@effect/ai"
import { Effect, Duration } from "effect"

declare const generateVectorFor: (text: string) => Array<number>

// Create embedding service with batching and caching
const embeddingService = EmbeddingModel.make({
  embedMany: (texts) => Effect.succeed(
    texts.map((text, index) => ({
      index,
      embeddings: generateVectorFor(text)
    }))
  ),
  maxBatchSize: 50,
  cache: {
    capacity: 1000,
    timeToLive: Duration.minutes(30)
  }
})
```

**Signature**

```ts
export * as EmbeddingModel from "./EmbeddingModel.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L174)

Since v1.0.0