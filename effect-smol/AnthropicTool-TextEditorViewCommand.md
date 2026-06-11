Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorViewCommand

Text editor command payload for viewing file contents or listing directory contents.

**Details**

`view_range` is a 1-indexed `[start, end]` tuple where `-1` means through
the end of the file.

**Signature**

```ts
type TextEditorViewCommand = typeof TextEditorViewCommand.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1674)

Since v4.0.0