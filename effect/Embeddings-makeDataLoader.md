# makeDataLoader

Creates an `Embeddings` service which will aggregate all `embed` requests
received during the specified `window` (up to a maximum of `maxBatchSize`
requests, if specified) and execute them as a single batch.

To import and use `makeDataLoader` from the "Embeddings" module:

```ts
import * as Embeddings from "@effect/ai/Embeddings"
// Can be accessed like this
Embeddings.makeDataLoader
```

**Signature**

```ts
export declare const makeDataLoader: (options: {
  readonly embedMany: (input: ReadonlyArray<string>) => Effect.Effect<Array<Embeddings.Result>, AiError>
  readonly window: Duration.DurationInput
  readonly maxBatchSize?: number
}) => Effect.Effect<Embeddings.Service, never, Scope>
```
