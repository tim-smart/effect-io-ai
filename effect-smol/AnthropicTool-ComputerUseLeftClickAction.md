Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseLeftClickAction

Perform a left click at the current mouse position or the specified coordinates.

**Signature**

```ts
declare const ComputerUseLeftClickAction: Schema.Struct<{ readonly action: Schema.Literal<"left_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L398)

Since v1.0.0