Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.AnthropicProviderDefinedTool

Represents a provider-defined tool that can be passed to the Anthropic API.

These include Anthropic's built-in tools like computer use, code execution,
web search, and text editing.

**Signature**

```ts
type AnthropicProviderDefinedTool = | typeof Generated.BetaBashTool_20241022.Encoded
  | typeof Generated.BetaBashTool_20250124.Encoded
  | typeof Generated.BetaCodeExecutionTool_20250522.Encoded
  | typeof Generated.BetaCodeExecutionTool_20250825.Encoded
  | typeof Generated.BetaComputerUseTool_20241022.Encoded
  | typeof Generated.BetaComputerUseTool_20250124.Encoded
  | typeof Generated.BetaComputerUseTool_20251124.Encoded
  | typeof Generated.BetaMemoryTool_20250818.Encoded
  | typeof Generated.BetaTextEditor_20241022.Encoded
  | typeof Generated.BetaTextEditor_20250124.Encoded
  | typeof Generated.BetaTextEditor_20250429.Encoded
  | typeof Generated.BetaTextEditor_20250728.Encoded
  | typeof Generated.BetaToolSearchToolBM25_20251119.Encoded
  | typeof Generated.BetaToolSearchToolRegex_20251119.Encoded
  | typeof Generated.BetaWebFetchTool_20250910.Encoded
  | typeof Generated.BetaWebSearchTool_20250305.Encoded
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L957)

Since v1.0.0