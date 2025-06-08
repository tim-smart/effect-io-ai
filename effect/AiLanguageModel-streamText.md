Package: `@effect/ai`<br />
Module: `AiLanguageModel`<br />

## AiLanguageModel.streamText

Generate text using a large language model for the specified `prompt`,
streaming output from the model as soon as it is available.

If a `toolkit` is specified, the large language model will additionally
be able to perform tool calls to augment its response.

**Signature**

```ts
declare const streamText: <Tools extends AiTool.Any, Options extends NoExcessProperties<GenerateTextOptions<any>, Options>>(options: Options & GenerateTextOptions<Tools>) => Stream.Stream<ExtractSuccess<Options>, ExtractError<Options>, AiLanguageModel | ExtractContext<Options>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiLanguageModel.ts#L583)

Since v1.0.0