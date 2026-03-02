Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiLanguageModel`<br />

## OpenAiLanguageModel.make

Creates an OpenAI language model service.

**Signature**

```ts
declare const make: (args_0: { readonly model: string; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Effect.Effect<LanguageModel.Service, never, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiLanguageModel.ts#L338)

Since v1.0.0