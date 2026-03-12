Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.GenerateTextResponse

Response class for text generation operations.

Contains the generated content and provides convenient accessors for
extracting different types of response parts like text, tool calls, and usage
information.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L328)

Since v4.0.0