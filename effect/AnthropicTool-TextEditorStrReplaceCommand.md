Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorStrReplaceCommand

Text editor command payload for replacing one exact, unique string in a file.

**When to use**

Use when typing parsed text-editor replace command payloads that must carry
one exact `old_str` match.

**Gotchas**

The `old_str` must match exactly, including whitespace and indentation, and
must be unique in the file.

**Signature**

```ts
type TextEditorStrReplaceCommand = typeof TextEditorStrReplaceCommand.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1785)

Since v4.0.0