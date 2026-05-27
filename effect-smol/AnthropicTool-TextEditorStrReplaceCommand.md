Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorStrReplaceCommand

Text editor command payload for replacing one exact, unique string in a file.

**Gotchas**

The `old_str` must match exactly, including whitespace and indentation, and
must be unique in the file.

**Signature**

```ts
type TextEditorStrReplaceCommand = typeof TextEditorStrReplaceCommand.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1794)

Since v4.0.0