Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.MemoryDeleteCommand

Delete a file or directory.

**Signature**

```ts
declare const MemoryDeleteCommand: Schema.Struct<{ readonly command: Schema.Literal<"delete">; readonly path: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L861)

Since v1.0.0