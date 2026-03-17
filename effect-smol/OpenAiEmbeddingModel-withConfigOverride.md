Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiEmbeddingModel`<br />

## OpenAiEmbeddingModel.withConfigOverride

Provides config overrides for OpenAI embedding model operations.

**Signature**

```ts
declare const withConfigOverride: { (overrides: typeof Config.Service): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Config>>; <A, E, R>(self: Effect.Effect<A, E, R>, overrides: typeof Config.Service): Effect.Effect<A, E, Exclude<R, Config>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiEmbeddingModel.ts#L116)

Since v1.0.0