Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiLanguageModel`<br />

## OpenAiLanguageModel.model

Creates an AI model descriptor for an OpenAI-compatible language model.

**Signature**

```ts
declare const model: (model: string, config?: Omit<typeof Config.Service, "model">) => AiModel.Model<"openai", LanguageModel.LanguageModel, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiLanguageModel.ts#L466)

Since v4.0.0