Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseScrollAction

Scroll a given amount in a specified direction.

**Signature**

```ts
declare const ComputerUseScrollAction: Schema.Struct<{ readonly action: Schema.Literal<"scroll">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; readonly scroll_direction: Schema.Literals<readonly ["up", "down", "left", "right"]>; readonly scroll_amount: Schema.Number; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L633)

Since v1.0.0