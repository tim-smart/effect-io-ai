Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiEmbeddingModel`<br />

## OpenAiEmbeddingModel.make

Creates an OpenAI-compatible embedding model service backed by `OpenAiClient`.

**When to use**

Use when you need to build or provide an `EmbeddingModel` service directly
from an existing `OpenAiClient`.

**Details**

The service sends embedding requests through `OpenAiClient.createEmbedding`.
Request config is merged as the selected model, constructor config, then
scoped `Config`, so scoped overrides take precedence. Provider usage
`prompt_tokens` is exposed as `usage.inputTokens`.

**Gotchas**

Provider responses must contain one numeric vector for every requested input
with unique, in-range `index` values; otherwise embedding operations fail with
`AiError.InvalidOutputError`.

**See**

- `model` for the higher-level `AiModel` descriptor that also provides `EmbeddingModel.Dimensions`
- `layer` for providing the service as a `Layer`
- `withConfigOverride` for scoping embedding request overrides

**Signature**

```ts
declare const make: (args_0: { readonly model: string; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Effect.Effect<EmbeddingModel.Service, never, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiEmbeddingModel.ts#L128)

Since v4.0.0