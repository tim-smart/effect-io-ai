Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseTripleClickAction

Perform a triple click.

**Signature**

```ts
declare const ComputerUseTripleClickAction: Schema.Struct<{ readonly action: Schema.Literal<"triple_click">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L661)

Since v1.0.0