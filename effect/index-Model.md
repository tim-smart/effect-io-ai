Package: `@effect/ai`<br />
Module: `index`<br />

## index.Model

Re-exports all named exports from the "./Model.js" module as `Model`.

**Example**

```ts
import { Model, LanguageModel } from "@effect/ai"
import { Effect, Layer } from "effect"

declare const myAnthropicLayer: Layer.Layer<LanguageModel.LanguageModel>

const anthropicModel = Model.make("anthropic", myAnthropicLayer)

const program = Effect.gen(function* () {
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
export * as Model from "./Model.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L320)

Since v1.0.0