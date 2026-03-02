Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseRightClickAction

Perform a right click.

**Signature**

```ts
declare const ComputerUseRightClickAction: Schema.Struct<{ readonly action: Schema.Literal<"right_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L613)

Since v1.0.0