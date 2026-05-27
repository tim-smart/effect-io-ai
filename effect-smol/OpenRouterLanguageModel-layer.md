Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterLanguageModel`<br />

## OpenRouterLanguageModel.layer

Creates a layer for the OpenRouter language model.

**When to use**

Use when composing application layers and you want OpenRouter to satisfy
`LanguageModel.LanguageModel` while supplying `OpenRouterClient` from another
layer.

**See**

- `make` for constructing the language model service effectfully
- `model` for creating a model descriptor for `Effect.provide`

**Signature**

```ts
declare const layer: (options: { readonly model: string; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Layer.Layer<LanguageModel.LanguageModel, never, OpenRouterClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterLanguageModel.ts#L651)

Since v4.0.0