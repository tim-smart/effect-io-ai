Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.Model

Known Anthropic Claude model identifiers exposed by the generated Anthropic schema.

**Details**

The Anthropic language model constructors accept `Model` values and custom
string model ids, so this type is best used for autocomplete and type checking
of known Claude ids.

**Signature**

```ts
type Model = typeof Generated.Model.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L54)

Since v4.0.0