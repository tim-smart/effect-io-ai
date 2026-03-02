Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseLeftClickDragAction

Click and drag from start coordinate to end coordinate.

**Signature**

```ts
declare const ComputerUseLeftClickDragAction: Schema.Struct<{ readonly action: Schema.Literal<"left_click_drag">; readonly start_coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; readonly coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L526)

Since v1.0.0