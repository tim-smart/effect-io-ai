Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.generateText

Generate text using a language model.

**Example**

```ts
import { LanguageModel } from "@effect/ai"
import { Effect } from "effect"

const program = Effect.gen(function* () {
  const response = yield* LanguageModel.generateText({
    prompt: "Write a haiku about programming",
    toolChoice: "none"
  })

  console.log(response.text)
  console.log(response.usage.totalTokens)

  return response
})
```

**Signature**

```ts
declare const generateText: <Options extends NoExcessProperties<GenerateTextOptions<any>, Options>, Tools extends Record<string, Tool.Any> = {}>(options: Options & GenerateTextOptions<Tools>) => Effect.Effect<GenerateTextResponse<Tools>, ExtractError<Options>, LanguageModel | ExtractContext<Options>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L894)

Since v1.0.0