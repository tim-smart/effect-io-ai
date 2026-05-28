Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.GenerateTextResponse

Response class for text generation operations, with accessors for extracting text, tool calls, usage information, and other response parts from generated content.

**Example** (Inspecting a text response)

```ts
import { Effect } from "effect"
import { LanguageModel } from "effect/unstable/ai"

const program = Effect.gen(function*() {
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L396)

Since v4.0.0