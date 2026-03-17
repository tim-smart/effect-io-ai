Package: `effect`<br />
Module: `index`<br />

## index.EmbeddingModel

Re-exports all named exports from the "./EmbeddingModel.ts" module as `EmbeddingModel`.

**Example**

```ts
import { Effect } from "effect"
import { EmbeddingModel } from "effect/unstable/ai"

const program = Effect.gen(function*() {
  const model = yield* EmbeddingModel.EmbeddingModel
  return yield* model.embed("hello world")
})
```

**Signature**

```ts
export * as EmbeddingModel from "./EmbeddingModel.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L172)

Since v4.0.0