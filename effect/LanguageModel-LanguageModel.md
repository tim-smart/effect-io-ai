Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.LanguageModel

The `LanguageModel` service tag for dependency injection.

This tag provides access to language model functionality throughout your
application, enabling text generation, streaming, and structured output
capabilities.

**Example**

```ts
import { LanguageModel } from "@effect/ai"
import { Effect } from "effect"

const useLanguageModel = Effect.gen(function* () {
  const model = yield* LanguageModel
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L98)

Since v1.0.0