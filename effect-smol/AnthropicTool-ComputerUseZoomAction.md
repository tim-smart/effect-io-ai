Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseZoomAction

Zoom into a specific region of the screen at full resolution.

Requires `enableZoom: true` in the tool definition.

**Signature**

```ts
declare const ComputerUseZoomAction: Schema.Struct<{ readonly action: Schema.Literal<"zoom">; readonly region: Schema.Tuple<readonly [Schema.Number, Schema.Number, Schema.Number, Schema.Number]>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L720)

Since v1.0.0