Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.make

Creates an Anthropic language model service.

**Signature**

```ts
declare const make: (args_0: { readonly model: (string & {}) | Model; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Effect.Effect<LanguageModel.Service, never, AnthropicClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L411)

Since v1.0.0