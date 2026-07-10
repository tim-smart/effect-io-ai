Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.layer

Creates a layer for the Anthropic language model.

**When to use**

Use when composing application layers and you want Anthropic to satisfy
`LanguageModel.LanguageModel` while supplying `AnthropicClient` from another
layer.

**See**

- `make` for constructing the language model service effectfully
- `model` for creating a model service directly

**Signature**

```ts
declare const layer: (options: { readonly model: (string & {}) | Model; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Layer.Layer<LanguageModel.LanguageModel, never, AnthropicClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L758)

Since v4.0.0