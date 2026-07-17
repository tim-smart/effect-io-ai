Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.make

Creates an Anthropic `LanguageModel` service from a model identifier and optional request defaults.

**When to use**

Use when you need to construct a `LanguageModel.Service` value backed by
`AnthropicClient` inside an Effect.

**Details**

The returned effect requires `AnthropicClient`. Request defaults from the
`config` option are merged with any `Config` service in the context, with
context values taking precedence.

**See**

- `layer` for providing the service as a `Layer`
- `model` for creating a model descriptor for `AiModel.provide`

**Signature**

```ts
declare const make: (args_0: { readonly model: (string & {}) | Model; readonly config?: Omit<typeof Config.Service, "model"> | undefined; }) => Effect.Effect<LanguageModel.Service, never, AnthropicClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L662)

Since v4.0.0