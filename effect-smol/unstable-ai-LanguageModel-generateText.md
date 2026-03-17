Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.generateText

Generate text using a language model.

**Example**

```ts
import { Effect } from "effect"
import { LanguageModel } from "effect/unstable/ai"

const program = Effect.gen(function*() {
  const response = yield* LanguageModel.generateText({
    prompt: "Write a haiku about programming",
    toolChoice: "none"
  })

  console.log(response.text)
  console.log(response.usage.inputTokens.total)

  return response
})
```

**Signature**

```ts
declare const generateText: <Options extends NoExcessProperties<GenerateTextOptions<any>, Options>>(options: Options & GenerateTextOptions<ExtractTools<Options>>) => Effect.Effect<GenerateTextResponse<ExtractTools<Options>>, ExtractError<Options>, LanguageModel | ExtractServices<Options>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L1536)

Since v4.0.0