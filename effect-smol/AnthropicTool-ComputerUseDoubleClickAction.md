Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseDoubleClickAction

Perform a double click.

**Signature**

```ts
declare const ComputerUseDoubleClickAction: Schema.Struct<{ readonly action: Schema.Literal<"double_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L483)

Since v1.0.0