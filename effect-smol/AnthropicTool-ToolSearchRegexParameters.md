Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ToolSearchRegexParameters

Type of the parameters Claude supplies when invoking regex-based Anthropic tool search.

**Details**

Claude constructs regex patterns using Python's `re.search()` syntax.
Maximum query length: 200 characters.

**Signature**

```ts
type ToolSearchRegexParameters = typeof ToolSearchRegexParameters.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L2424)

Since v4.0.0