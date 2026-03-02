Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.MemoryViewCommand

Shows directory contents or file contents with optional line ranges.

**Signature**

```ts
declare const MemoryViewCommand: Schema.Struct<{ readonly command: Schema.Literal<"view">; readonly path: Schema.String; readonly view_range: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L957)

Since v1.0.0