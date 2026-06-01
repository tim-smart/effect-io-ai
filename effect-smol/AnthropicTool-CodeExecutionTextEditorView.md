Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.CodeExecutionTextEditorView

Input payload for the `view` command of Anthropic's text editor code execution tool.

**When to use**

Use when working at the Anthropic protocol boundary and the code-execution
view request must be distinguished from standalone text-editor view requests.

**Details**

The payload is discriminated by `type: "text_editor_code_execution"` and
`command: "view"`. The `path` field identifies the file to view.

**Gotchas**

This code execution view payload does not include `view_range`; line ranges
are part of the standalone text editor view payload, not this code execution
payload.

**See**

- `CodeExecution_20250522` for the provider-defined code execution tool that includes this payload
- `TextEditorViewCommand` for the standalone text editor view payload

**Signature**

```ts
type CodeExecutionTextEditorView = typeof CodeExecutionTextEditorView.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L300)

Since v4.0.0