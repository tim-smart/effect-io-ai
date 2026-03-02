Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorInsertCommand

Insert text at a specific line number in a file.

Inserts the new text AFTER the specified line number.

**Signature**

```ts
declare const TextEditorInsertCommand: Schema.Struct<{ readonly command: Schema.Literal<"insert">; readonly path: Schema.String; readonly insert_line: Schema.Number; readonly new_str: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1102)

Since v1.0.0