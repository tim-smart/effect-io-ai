Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterLanguageModel`<br />

## OpenRouterLanguageModel.make

Creates an OpenRouter language model service.

**Signature**

```ts
declare const make: (args_0: { readonly model: string; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Effect.Effect<LanguageModel.Service, never, OpenRouterClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterLanguageModel.ts#L245)

Since v1.0.0