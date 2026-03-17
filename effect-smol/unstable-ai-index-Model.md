Package: `effect`<br />
Module: `index`<br />

## index.Model

Re-exports all named exports from the "./Model.ts" module as `Model`.

**Example**

```ts
import type { Layer } from "effect"
import { Effect } from "effect"
import { LanguageModel, Model } from "effect/unstable/ai"

declare const myAnthropicLayer: Layer.Layer<LanguageModel.LanguageModel>

const anthropicModel = Model.make("anthropic", "claude-3-5-haiku", myAnthropicLayer)

const program = Effect.gen(function*() {
  const response = yield* LanguageModel.generateText({
    prompt: "Hello, world!"
  })
  return response.text
}).pipe(
  Effect.provide(anthropicModel)
)
```

**Signature**

```ts
export * as Model from "./Model.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L315)

Since v4.0.0