Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.MemoryRenameCommand

Rename or move a file or directory.

**Signature**

```ts
declare const MemoryRenameCommand: Schema.Struct<{ readonly command: Schema.Literal<"rename">; readonly old_path: Schema.String; readonly new_path: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L907)

Since v1.0.0