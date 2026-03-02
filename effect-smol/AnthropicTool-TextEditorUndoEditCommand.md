Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorUndoEditCommand

Undo the last edit made to a file.

Reverts the most recent str_replace, insert, or create operation on the file.

NOTE: This command is available in text_editor_20241022 and text_editor_20250124,
but NOT in text_editor_20250728 (Claude 4 models).

**Signature**

```ts
declare const TextEditorUndoEditCommand: Schema.Struct<{ readonly command: Schema.Literal<"undo_edit">; readonly path: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1134)

Since v1.0.0