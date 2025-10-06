Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditor_20241022

Allow Claude to directly interact with your files, providing hands-on
assistance rather than just suggesting changes.

**Signature**

```ts
declare const TextEditor_20241022: <Mode extends Tool.FailureMode | undefined = undefined>(args: { readonly failureMode?: Mode | undefined; }) => Tool.ProviderDefined<"AnthropicTextEditor", { readonly args: Schema.Struct<{}>; readonly parameters: Schema.Struct<{ command: Schema.Literal<["view", "create", "str_replace", "insert", "undo_edit"]>; path: typeof Schema.String; file_text: Schema.optional<typeof Schema.String>; insert_line: Schema.optional<typeof Schema.Number>; new_str: Schema.optional<typeof Schema.String>; old_str: Schema.optional<typeof Schema.String>; view_range: Schema.optional<Schema.Array$<typeof Schema.Number>>; }>; readonly success: typeof Schema.Void; readonly failure: typeof Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, true>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L285)

Since v1.0.0