Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.withConfigOverride

Provides config overrides for Anthropic language model operations.

**When to use**

Use to apply Anthropic request configuration to one effect without changing
the model's default configuration.

**Details**

The overrides are merged with any existing `Config` service for the duration
of the supplied effect. Fields in `overrides` take precedence over existing
config, and the helper supports both `effect.pipe(withConfigOverride(overrides))`
and `withConfigOverride(effect, overrides)`.

**See**

- `Config` for available Anthropic request configuration fields

**Signature**

```ts
declare const withConfigOverride: { (overrides: typeof Config.Service): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Config>>; <A, E, R>(self: Effect.Effect<A, E, R>, overrides: typeof Config.Service): Effect.Effect<A, E, Exclude<R, Config>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L790)

Since v4.0.0