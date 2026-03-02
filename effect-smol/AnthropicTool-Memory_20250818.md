Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.Memory_20250818

Memory tool for persistent file operations across conversations.

Provides commands for creating, viewing, editing, renaming, and deleting
files within the model's memory space.

**Signature**

```ts
declare const Memory_20250818: <Mode extends Tool.FailureMode | undefined = undefined>(args: void) => Tool.ProviderDefined<"anthropic.memory_20250818", "AnthropicMemory", { readonly args: Schema.Void; readonly parameters: Schema.Union<readonly [Schema.Struct<{ readonly command: Schema.Literal<"create">; readonly path: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"delete">; readonly path: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"insert">; readonly path: Schema.String; readonly insert_line: Schema.Number; readonly insert_text: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"rename">; readonly old_path: Schema.String; readonly new_path: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"str_replace">; readonly path: Schema.String; readonly old_str: Schema.String; readonly new_str: Schema.String; }>, Schema.Struct<{ readonly command: Schema.Literal<"view">; readonly path: Schema.String; readonly view_range: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>]>; readonly success: Schema.String; readonly failure: Schema.Never; readonly failureMode: Mode extends undefined ? "error" : Mode; }, false>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L996)

Since v1.0.0