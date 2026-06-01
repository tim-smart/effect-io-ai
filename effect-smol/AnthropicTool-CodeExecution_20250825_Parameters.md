Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.CodeExecution_20250825_Parameters

Input payload for the 2025-08-25 Anthropic code execution tool.

**When to use**

Use when exposing the 2025-08-25 code-execution payload separately from the
provider tool definition, such as at a transport or persistence boundary.

**Details**

The payload has a single `code` field containing the source code string to
execute.

**See**

- `CodeExecution_20250825` for the provider-defined tool that consumes this payload

**Signature**

```ts
type CodeExecution_20250825_Parameters = typeof CodeExecution_20250825_Parameters.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L435)

Since v4.0.0