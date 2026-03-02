Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.MemoryInsertCommand

Insert text at a specific line.

**Signature**

```ts
declare const MemoryInsertCommand: Schema.Struct<{ readonly command: Schema.Literal<"insert">; readonly path: Schema.String; readonly insert_line: Schema.Number; readonly insert_text: Schema.String; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L880)

Since v1.0.0