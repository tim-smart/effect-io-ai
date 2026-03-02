Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorViewCommand

View the contents of a file or list directory contents.

When used on a file: Returns the file contents, optionally limited to a line range.
When used on a directory: Lists all files and subdirectories.

**Signature**

```ts
declare const TextEditorViewCommand: Schema.Struct<{ readonly command: Schema.Literal<"view">; readonly path: Schema.String; readonly view_range: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1021)

Since v1.0.0