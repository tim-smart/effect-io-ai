Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiEmbeddingModel`<br />

## OpenAiEmbeddingModel.withConfigOverride

Provides scoped request config overrides for OpenAI-compatible embedding model operations.

**When to use**

Use to apply embedding request options to one effect without changing the
model's default configuration.

**Details**

The overrides are merged with any existing `Config` service for the duration
of the supplied effect. Fields in `overrides` take precedence over existing
config, and the helper supports both `effect.pipe(withConfigOverride(overrides))`
and `withConfigOverride(effect, overrides)`.

**See**

- `Config` for available OpenAI-compatible embedding request configuration fields

**Signature**

```ts
declare const withConfigOverride: { (overrides: typeof Config.Service): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Config>>; <A, E, R>(self: Effect.Effect<A, E, R>, overrides: typeof Config.Service): Effect.Effect<A, E, Exclude<R, Config>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiEmbeddingModel.ts#L217)

Since v4.0.0