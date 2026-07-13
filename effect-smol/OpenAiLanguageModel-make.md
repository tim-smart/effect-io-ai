Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiLanguageModel`<br />

## OpenAiLanguageModel.make

Creates an OpenAI-compatible `LanguageModel` service from a model identifier and optional request defaults.

**When to use**

Use to construct an OpenAI-compatible chat-completions language model service
backed by `OpenAiClient`.

**Details**

The returned effect requires `OpenAiClient`. Request defaults from the
`config` option are merged with any `Config` service in the context, with
context values taking precedence. The service supports both `generateText` and
`streamText`.

**See**

- `layer` for providing the service as a `Layer`
- `model` for creating a model descriptor for `AiModel.provide`

**Signature**

```ts
declare const make: (args_0: { readonly model: string; readonly config?: ModelConfig | undefined; }) => Effect.Effect<LanguageModel.Service, never, OpenAiClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiLanguageModel.ts#L569)

Since v4.0.0