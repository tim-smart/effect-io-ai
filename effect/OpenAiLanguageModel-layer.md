Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiLanguageModel`<br />

## OpenAiLanguageModel.layer

Creates a layer for the OpenAI-compatible language model.

**When to use**

Use when composing application layers and you want OpenAI-compatible APIs to
satisfy `LanguageModel.LanguageModel` while supplying `OpenAiClient` from
another layer.

**See**

- `make` for constructing the language model service effectfully
- `model` for creating an AI model descriptor

**Signature**

```ts
declare const layer: (options: { readonly model: string; readonly config?: ModelConfig | undefined; }) => Layer.Layer<LanguageModel.LanguageModel, never, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiLanguageModel.ts#L677)

Since v4.0.0