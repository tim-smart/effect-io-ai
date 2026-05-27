Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.AnthropicUserDefinedTool

Encoded Anthropic custom tool definition that can be sent in a Messages API request.

**When to use**

Use when you need to type or inspect the provider-specific request payload for
a custom Anthropic tool.

**Details**

This type aliases the encoded `Generated.BetaTool` schema used for Effect
user-defined and dynamic tools after conversion. It contains the tool `name`,
optional `description`, and `input_schema`, plus Anthropic-specific fields
such as `strict` and `cache_control`.

**See**

- `AnthropicProviderDefinedTool` for the request shape used by Anthropic built-in provider tools

**Signature**

```ts
type AnthropicUserDefinedTool = typeof Generated.BetaTool.Encoded
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L1251)

Since v4.0.0