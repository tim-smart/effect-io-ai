Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.layer

Creates a layer for the Anthropic language model.

**Signature**

```ts
declare const layer: (options: { readonly model: (string & {}) | Model; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Layer.Layer<LanguageModel.LanguageModel, never, AnthropicClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L507)

Since v1.0.0