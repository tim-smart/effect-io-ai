Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorStrReplaceCommand

Replace a specific string in a file with a new string.

The `old_str` must match exactly (including whitespace and indentation)
and must be unique in the file.

**Signature**

```ts
declare const TextEditorStrReplaceCommand: Schema.Struct<{ readonly command: Schema.Literal<"str_replace">; readonly path: Schema.String; readonly old_str: Schema.String; readonly new_str: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1073)

Since v1.0.0