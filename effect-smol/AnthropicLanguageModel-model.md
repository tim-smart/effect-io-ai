Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.model

Creates an Anthropic model descriptor that can be provided with `Effect.provide`.

**When to use**

Use when you want an Anthropic Claude model value that carries provider and
model metadata and can be supplied directly to an Effect program.

**See**

- `layer` for creating a `LanguageModel.LanguageModel` layer directly
- `make` for constructing the language model service effectfully

**Signature**

```ts
declare const model: (model: (string & {}) | Model, config?: Omit<typeof Config.Service, "model">) => AiModel.Model<"anthropic", LanguageModel.LanguageModel, AnthropicClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L661)

Since v4.0.0