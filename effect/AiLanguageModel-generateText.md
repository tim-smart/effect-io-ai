Package: `@effect/ai`<br />
Module: `AiLanguageModel`<br />

## AiLanguageModel.generateText

Generate text using a large language model for the specified `prompt`.

If a `toolkit` is specified, the large language model will additionally
be able to perform tool calls to augment its response.

**Signature**

```ts
declare const generateText: <Tools extends AiTool.Any, Options extends NoExcessProperties<GenerateTextOptions<any>, Options>>(options: Options & GenerateTextOptions<Tools>) => Effect.Effect<ExtractSuccess<Options>, ExtractError<Options>, AiLanguageModel | ExtractContext<Options>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiLanguageModel.ts#L632)

Since v1.0.0