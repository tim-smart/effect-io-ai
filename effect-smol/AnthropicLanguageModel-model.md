Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.model

Creates an Anthropic language model that can be used with `AiModel.provide`.

**Signature**

```ts
declare const model: (model: (string & {}) | Model, config?: Omit<typeof Config.Service, "model">) => AiModel.Model<"anthropic", LanguageModel.LanguageModel, AnthropicClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L399)

Since v1.0.0