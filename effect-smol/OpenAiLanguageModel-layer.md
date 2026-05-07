Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiLanguageModel`<br />

## OpenAiLanguageModel.layer

Creates a layer for the OpenAI language model.

**Signature**

```ts
declare const layer: (options: { readonly model: string; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Layer.Layer<LanguageModel.LanguageModel, never, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiLanguageModel.ts#L439)

Since v1.0.0