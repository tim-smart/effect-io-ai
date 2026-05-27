Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterLanguageModel`<br />

## OpenRouterLanguageModel.make

Creates an OpenRouter `LanguageModel` service from a model identifier and
optional request defaults.

**When to use**

Use when an Effect needs to construct a `LanguageModel.Service` value backed
by `OpenRouterClient`.

**Details**

The returned effect requires `OpenRouterClient`. Request defaults from the
`config` option are merged with any `Config` service in the context, with
context values taking precedence. The service supports both `generateText`
and `streamText`.

**Gotchas**

Provider-defined tools are not supported by this provider integration;
requests that include them fail with an `InvalidUserInputError`.

**See**

- `layer` for providing the service as a `Layer`
- `model` for creating a model descriptor for `Effect.provide`
- `withConfigOverride` for scoping request defaults around operations

**Signature**

```ts
declare const make: (args_0: { readonly model: string; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Effect.Effect<LanguageModel.Service, never, OpenRouterClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterLanguageModel.ts#L573)

Since v4.0.0