Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditor_20250124

Text editor tool for Claude Sonnet 3.7 (deprecated model).

**Signature**

```ts
declare const TextEditor_20250124: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"anthropic.text_editor_20250124", "AnthropicTextEditor", { readonly args: Schema.Void; readonly parameters: Schema.Union<readonly [Schema.Struct<{ readonly command: Schema.Literal<"view">; readonly path: Schema.String; readonly view_range: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly command: Schema.Literal<"create">; readonly path: Schema.String; readonly file_text: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"str_replace">; readonly path: Schema.String; readonly old_str: Schema.String; readonly new_str: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"insert">; readonly path: Schema.String; readonly insert_line: Schema.Number; readonly new_str: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"undo_edit">; readonly path: Schema.String; }>]>; readonly success: Schema.String; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1201)

Since v1.0.0