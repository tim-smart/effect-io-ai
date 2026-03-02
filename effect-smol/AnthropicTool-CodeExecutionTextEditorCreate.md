Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.CodeExecutionTextEditorCreate

Text editor create command for code execution.

**Signature**

```ts
declare const CodeExecutionTextEditorCreate: Schema.Struct<{ readonly type: Schema.Literal<"text_editor_code_execution">; readonly command: Schema.Literal<"create">; readonly path: Schema.String; readonly file_text: Schema.optional<Schema.NullOr<Schema.String>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L155)

Since v1.0.0