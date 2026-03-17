Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.withConfigOverride

Provides config overrides for Anthropic language model operations.

**Signature**

```ts
declare const withConfigOverride: { (overrides: typeof Config.Service): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Config>>; <A, E, R>(self: Effect.Effect<A, E, R>, overrides: typeof Config.Service): Effect.Effect<A, E, Exclude<R, Config>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L510)

Since v1.0.0