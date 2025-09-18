Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.GenerateTextResponse

Response class for text generation operations.

Contains the generated content and provides convenient accessors for
extracting different types of response parts like text, tool calls, and usage
information.

**Example**

```ts
import { LanguageModel } from "@effect/ai"
import { Effect } from "effect"

const program = Effect.gen(function* () {
  const response = yield* LanguageModel.generateText({
    prompt: "Explain photosynthesis"
  })

  console.log(response.text) // Generated text content
  console.log(response.finishReason) // "stop", "length", etc.
  console.log(response.usage) // Usage information

  return response
})
```

**Signature**

```ts
declare class GenerateTextResponse<Tools> { constructor(content: Array<Response.Part<Tools>>) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L283)

Since v1.0.0