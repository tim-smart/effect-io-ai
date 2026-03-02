Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ToolSearchRegexParameters

Input parameters for regex-based tool search.

Claude constructs regex patterns using Python's `re.search()` syntax.
Maximum query length: 200 characters.

**Signature**

```ts
declare const ToolSearchRegexParameters: Schema.Struct<{ readonly query: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1504)

Since v1.0.0