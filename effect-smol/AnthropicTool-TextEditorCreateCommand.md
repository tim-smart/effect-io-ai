Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorCreateCommand

Text editor command payload for creating a new file with the specified content.

**Gotchas**

The command fails if the file already exists or if parent directories are missing.

**Signature**

```ts
type TextEditorCreateCommand = typeof TextEditorCreateCommand.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1742)

Since v4.0.0