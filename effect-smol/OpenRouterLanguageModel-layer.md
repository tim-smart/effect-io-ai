Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterLanguageModel`<br />

## OpenRouterLanguageModel.layer

Creates a layer for the OpenRouter language model.

**Signature**

```ts
declare const layer: (options: { readonly model: string; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Layer.Layer<LanguageModel.LanguageModel, never, OpenRouterClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterLanguageModel.ts#L315)

Since v1.0.0