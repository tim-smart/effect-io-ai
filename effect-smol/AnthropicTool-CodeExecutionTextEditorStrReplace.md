Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.CodeExecutionTextEditorStrReplace

Text editor str_replace command for code execution.

**Signature**

```ts
declare const CodeExecutionTextEditorStrReplace: Schema.Struct<{ readonly type: Schema.Literal<"text_editor_code_execution">; readonly command: Schema.Literal<"str_replace">; readonly path: Schema.String; readonly old_str: Schema.String; readonly new_str: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L179)

Since v1.0.0