Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterLanguageModel`<br />

## OpenRouterLanguageModel.model

Creates an OpenRouter model descriptor that can be provided with
`Effect.provide`.

**When to use**

Use when you want an OpenRouter language model value that carries provider
and model metadata and can be supplied directly to an Effect program.

**Details**

The returned model requires `OpenRouterClient` and provides
`LanguageModel.LanguageModel`.

**See**

- `layer` for creating a `LanguageModel.LanguageModel` layer directly
- `make` for constructing the language model service effectfully
- `withConfigOverride` for scoping OpenRouter request overrides

**Signature**

```ts
declare const model: (model: string, config?: Omit<typeof Config.Service, "model">) => AiModel.Model<"openai", LanguageModel.LanguageModel, OpenRouterClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterLanguageModel.ts#L507)

Since v4.0.0