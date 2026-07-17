Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorCreateCommand

Text editor command payload for creating a new file with the specified content.

**When to use**

Use when typing parsed text-editor create command payloads after schema
validation and before dispatching to Anthropic tool handlers.

**Gotchas**

The command fails if the file already exists or if parent directories are missing.

**Signature**

```ts
type TextEditorCreateCommand = typeof TextEditorCreateCommand.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1728)

Since v4.0.0