Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.CodeExecutionBashCommand

Input payload for a bash command routed through the Anthropic code execution tool.

**When to use**

Use when representing a provider-executed bash command request for the
2025-05-22 code execution tool.

**Details**

The payload uses `type: "bash_code_execution"` to distinguish bash execution
from programmatic code and text editor operations, and `command` contains the
bash command to run.

**See**

- `CodeExecutionProgrammaticToolCall` for programmatic code execution input
- `CodeExecutionTextEditorView` for viewing files through text editor code execution
- `CodeExecutionTextEditorCreate` for creating files through text editor code execution
- `CodeExecutionTextEditorStrReplace` for replacing text through text editor code execution
- `CodeExecution_20250522` for the provider-defined tool that consumes this payload

**Signature**

```ts
type CodeExecutionBashCommand = typeof CodeExecutionBashCommand.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L246)

Since v4.0.0