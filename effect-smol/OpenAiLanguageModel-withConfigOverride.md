Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiLanguageModel`<br />

## OpenAiLanguageModel.withConfigOverride

Provides scoped config overrides for OpenAI-compatible language model operations.

**When to use**

Use to override request configuration for a single language model effect
without changing the defaults supplied to `model`, `make`, or `layer`.

**Details**

Existing `Config` values from the Effect context are merged with `overrides`,
and the override values take precedence.

**See**

- `Config` for the configuration shape

**Signature**

```ts
declare const withConfigOverride: { (overrides: typeof Config.Service): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Config>>; <A, E, R>(self: Effect.Effect<A, E, R>, overrides: typeof Config.Service): Effect.Effect<A, E, Exclude<R, Config>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiLanguageModel.ts#L726)

Since v4.0.0