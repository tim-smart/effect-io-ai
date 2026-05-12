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
declare const generateText: { <Options extends NoExcessProperties<GenerateTextOptionsWithoutToolkit, Options>>(options: Options & GenerateTextOptionsWithoutToolkit): Effect.Effect<GenerateTextResponse<{}>, ExtractError<Options>, LanguageModel | ExtractServices<Options>>; <Tools extends Record<string, Tool.Any>, Options extends NoExcessProperties<GenerateTextOptions<Tools> & { readonly toolkit: ToolkitInput<Tools>; }, Options>>(options: Options & GenerateTextOptions<Tools> & { readonly toolkit: ToolkitInput<Tools>; }): Effect.Effect<GenerateTextResponse<Tools>, ExtractError<Options>, LanguageModel | ExtractServices<Options>>; <Options extends { readonly toolkit: ToolkitOption<any>; } & NoExcessProperties<GenerateTextOptions<any>, Options>>(options: Options & GenerateTextOptions<ExtractTools<Options>> & { readonly toolkit: Options["toolkit"]; }): Effect.Effect<GenerateTextResponse<ExtractTools<Options>>, ExtractError<Options>, ExtractServices<Options> | LanguageModel>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L1619)

Since v4.0.0