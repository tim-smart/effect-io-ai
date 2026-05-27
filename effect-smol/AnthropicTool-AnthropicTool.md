Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.AnthropicTool

Union of all Anthropic provider-defined tool definitions exported by this module.

**When to use**

Use when a helper, collection, or option accepts any Anthropic
provider-defined tool value created by this module.

**Details**

The union is built from the return types of the exported constructors,
including Bash, Code Execution, Computer Use, Memory, Text Editor, Tool
Search, Web Fetch, and Web Search tool versions.

**Signature**

```ts
type AnthropicTool = | ReturnType<typeof Bash_20241022>
  | ReturnType<typeof Bash_20250124>
  | ReturnType<typeof CodeExecution_20250522>
  | ReturnType<typeof CodeExecution_20250825>
  | ReturnType<typeof ComputerUse_20241022>
  | ReturnType<typeof ComputerUse_20250124>
  | ReturnType<typeof ComputerUse_20251124>
  | ReturnType<typeof Memory_20250818>
  | ReturnType<typeof TextEditor_20241022>
  | ReturnType<typeof TextEditor_20250124>
  | ReturnType<typeof TextEditor_20250429>
  | ReturnType<typeof TextEditor_20250728>
  | ReturnType<typeof ToolSearchRegex_20251119>
  | ReturnType<typeof ToolSearchBM25_20251119>
  | ReturnType<typeof WebFetch_20250910>
  | ReturnType<typeof WebSearch_20250305>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L80)

Since v4.0.0