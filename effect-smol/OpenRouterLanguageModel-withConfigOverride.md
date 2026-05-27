Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterLanguageModel`<br />

## OpenRouterLanguageModel.withConfigOverride

Provides config overrides for OpenRouter language model operations.

**When to use**

Use to apply OpenRouter request configuration to one effect without changing
the model's default configuration.

**Details**

The overrides are merged with any existing `Config` service for the duration
of the supplied effect. Fields in `overrides` take precedence over existing
config, and the helper supports both pipe form and
`withConfigOverride(effect, overrides)`.

**See**

- `Config` for available OpenRouter request configuration fields

**Signature**

```ts
declare const withConfigOverride: { (overrides: typeof Config.Service): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Config>>; <A, E, R>(self: Effect.Effect<A, E, R>, overrides: typeof Config.Service): Effect.Effect<A, E, Exclude<R, Config>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterLanguageModel.ts#L677)

Since v4.0.0