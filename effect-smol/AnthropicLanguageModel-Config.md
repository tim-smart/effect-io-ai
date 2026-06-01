Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.Config

Context service for Anthropic language model configuration.

**When to use**

Use when you need scoped Anthropic model request defaults or per-operation
overrides from Effect context.

**Details**

The service stores request fields that are merged into Anthropic Messages API
requests. Scoped configuration overrides defaults supplied to `model`,
`make`, or `layer`.

**Signature**

```ts
declare class Config
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L96)

Since v4.0.0