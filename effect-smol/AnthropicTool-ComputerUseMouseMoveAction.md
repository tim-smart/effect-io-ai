Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseMouseMoveAction

Move the mouse cursor to the specified coordinates.

**Signature**

```ts
declare const ComputerUseMouseMoveAction: Schema.Struct<{ readonly action: Schema.Literal<"mouse_move">; readonly coordinate: Schema.Tuple<readonly [Schema.Number, Schema.Number]>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L418)

Since v1.0.0