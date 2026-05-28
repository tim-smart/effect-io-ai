Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiLanguageModel`<br />

## OpenAiLanguageModel.Config

Context service for OpenAI language model configuration.

**When to use**

Use as the context service for OpenAI-compatible language model request
configuration, especially when a scoped operation should override the defaults
supplied to `model`, `make`, or `layer`.

**See**

- `withConfigOverride` for scoping language model request overrides

**Signature**

```ts
declare class Config
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiLanguageModel.ts#L101)

Since v4.0.0