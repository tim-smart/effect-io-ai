Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.LanguageModel

Service tag for AI model services.

**When to use**

Use to access or provide text generation, streaming generation, structured
output, and tool-calling capabilities through the Effect context.

**Example** (Accessing the language model service)

```ts
import { Effect } from "effect"
import { LanguageModel } from "effect/unstable/ai"

const program = Effect.gen(function*() {
  const model = yield* LanguageModel.LanguageModel
  const response = yield* model.generateText({
    prompt: "What is machine learning?"
  })
  return response.text
})
```

**Signature**

```ts
declare class LanguageModel
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L71)

Since v4.0.0