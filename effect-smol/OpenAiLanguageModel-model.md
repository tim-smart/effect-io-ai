Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiLanguageModel`<br />

## OpenAiLanguageModel.model

Creates an OpenAI-compatible model descriptor that can be provided with `Effect.provide`.

**When to use**

Use when you want an OpenAI-compatible language model value that carries
provider and model metadata and can be supplied directly to an Effect program.

**See**

- `layer` for creating a `LanguageModel.LanguageModel` layer directly
- `make` for constructing the language model service effectfully

**Signature**

```ts
declare const model: (model: string, config?: Omit<typeof Config.Service, "model">) => AiModel.Model<"openai", LanguageModel.LanguageModel, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiLanguageModel.ts#L556)

Since v4.0.0