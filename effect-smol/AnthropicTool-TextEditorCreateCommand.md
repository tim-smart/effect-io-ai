Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.TextEditorCreateCommand

Create a new file with specified content.

Will fail if the file already exists. Parent directories must exist.

**Signature**

```ts
declare const TextEditorCreateCommand: Schema.Struct<{ readonly command: Schema.Literal<"create">; readonly path: Schema.String; readonly file_text: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1047)

Since v1.0.0