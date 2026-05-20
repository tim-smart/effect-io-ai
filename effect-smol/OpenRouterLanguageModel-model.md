Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterLanguageModel`<br />

## OpenRouterLanguageModel.model

Creates an AI model descriptor for an OpenRouter language model.

**Signature**

```ts
declare const model: (model: string, config?: Omit<typeof Config.Service, "model">) => AiModel.Model<"openai", LanguageModel.LanguageModel, OpenRouterClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterLanguageModel.ts#L498)

Since v4.0.0