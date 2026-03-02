Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ComputerUseLeftMouseUpAction

Release the left mouse button.

Used for fine-grained click control.

**Signature**

```ts
declare const ComputerUseLeftMouseUpAction: Schema.Struct<{ readonly action: Schema.Literal<"left_mouse_up">; readonly coordinate: Schema.optional<Schema.Tuple<readonly [Schema.Number, Schema.Number]>>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L573)

Since v1.0.0