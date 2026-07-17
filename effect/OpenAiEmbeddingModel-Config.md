Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiEmbeddingModel`<br />

## OpenAiEmbeddingModel.Config

Context service for OpenAI embedding model configuration.

**When to use**

Use when you need to provide shared default request options for
OpenAI-compatible embedding operations through the Effect context, such as
`dimensions`, `encoding_format`, or `user`.

**Details**

The service stores the embedding request payload without `input`. Requests
combine the selected model, layer or constructor config, and scoped context
config, with scoped context config taking precedence.

**See**

- `withConfigOverride` for scoping embedding request overrides

**Signature**

```ts
declare class Config
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiEmbeddingModel.ts#L52)

Since v4.0.0