Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.LanguageModel

The `LanguageModel` service key for dependency injection.

This provides access to language model functionality throughout your
application, enabling text generation, streaming, and structured output
capabilities.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L106)

Since v4.0.0