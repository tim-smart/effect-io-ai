Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditor_20241022

Defines the deprecated text editor tool for Claude 3.5 Sonnet.

**When to use**

Use when you need the 2024-10-22 `str_replace_editor` compatibility path for
Claude 3.5 Sonnet.

**Details**

Requires the "computer-use-2024-10-22" beta header and supports `view`,
`create`, `str_replace`, `insert`, and `undo_edit` commands.

**See**

- `TextEditor_20250124` for the newer `str_replace_editor` version
- `TextEditor_20250728` for the Claude 4 `str_replace_based_edit_tool` line

**Signature**

```ts
declare const TextEditor_20241022: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"anthropic.text_editor_20241022", "AnthropicTextEditor", { readonly args: Schema.Void; readonly parameters: Schema.Union<readonly [Schema.Struct<{ readonly command: Schema.Literal<"view">; readonly path: Schema.String; readonly view_range: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>, Schema.Struct<{ readonly command: Schema.Literal<"create">; readonly path: Schema.String; readonly file_text: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"str_replace">; readonly path: Schema.String; readonly old_str: Schema.String; readonly new_str: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"insert">; readonly path: Schema.String; readonly insert_line: Schema.Number; readonly new_str: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"undo_edit">; readonly path: Schema.String; }>]>; readonly success: Schema.String; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1903)

Since v4.0.0