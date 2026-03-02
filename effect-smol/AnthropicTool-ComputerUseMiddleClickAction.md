Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseMiddleClickAction

Perform a middle click.

**Signature**

```ts
declare const ComputerUseMiddleClickAction: Schema.Struct<{ readonly action: Schema.Literal<"middle_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L593)

Since v1.0.0